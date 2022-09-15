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

(define-key (current-global-map) [remap switch-to-buffer] 'consult-buffer)
(global-set-key (kbd "C-c i") 'consult-line)
(global-set-key (kbd "C-c r") 'consult-ripgrep)
;; (global-set-key (kbd "C-c f") 'consult-recent-file)

(provide 'init-consult)
;;; init-consult.el ends here
