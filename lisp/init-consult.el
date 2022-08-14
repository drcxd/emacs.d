;;; init-consult --- summary
;;; Commentary:
;;; Code:
(require-package 'consult)
(setq xref-show-xrefs-function #'consult-xref
      xref-show-definitions-function #'consult-xref)

(if (eq system-type 'windows-nt)
    (add-to-list 'process-coding-system-alist
                 '("[rR][gG]" . (utf-8 . gbk-dos))))

(define-key (current-global-map) [remap switch-to-buffer] 'consult-buffer)
(global-set-key (kbd "C-c i") 'consult-line)
(global-set-key (kbd "C-c r") 'consult-ripgrep)
;; (global-set-key (kbd "C-c f") 'consult-recent-file)

(provide 'init-consult)
;;; init-consult.el ends here
