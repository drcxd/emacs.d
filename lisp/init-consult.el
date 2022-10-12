;;; init-consult --- summary
;;; Commentary:
;;; Code:
(require-package 'consult)
(setq xref-show-xrefs-function #'consult-xref
      xref-show-definitions-function #'consult-xref)

(if (eq system-type 'windows-nt)
    (progn
      ;; https://github.com/minad/consult/issues/572
      (add-to-list 'process-coding-system-alist
                   '("[rR][gG]" . (utf-8 . gbk-dos)))
      ;; https://github.com/minad/consult/issues/601
      (setq consult-find-args (concat find-program " . "))))

(setq consult-preview-excluded-files ".*org")
(define-key (current-global-map) [remap switch-to-buffer] 'consult-buffer)
(global-set-key (kbd "C-c i") 'consult-line)
(global-set-key (kbd "C-c r") 'consult-ripgrep)
;; (global-set-key (kbd "C-c f") 'consult-recent-file)

(defvar consult--fd-command nil)
(defun consult--fd-builder (input)
  (unless consult--fd-command
    (setq consult--fd-command
          (if (eq 0 (call-process-shell-command "fdfind"))
              "fdfind"
            "fd")))
  (pcase-let* ((`(,arg . ,opts) (consult--command-split input))
               (`(,re . ,hl) (funcall consult--regexp-compiler
                                      arg 'extended t)))
    (when re
      (list :command (append
                      (list consult--fd-command
                            "--color=never" "--full-path"
                            (consult--join-regexps re 'extended))
                      opts)
            :highlight hl))))

(defun consult-fd (&optional dir initial)
  (interactive "P")
  (let* ((prompt-dir (consult--directory-prompt "Fd" dir))
         (default-directory (cdr prompt-dir)))
    (find-file (consult--find (car prompt-dir) #'consult--fd-builder initial))))

(global-set-key (kbd "C-c f") 'consult-fd)

(provide 'init-consult)
;;; init-consult.el ends here
