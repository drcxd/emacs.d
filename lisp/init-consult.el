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
(global-set-key (kbd "C-c c g") 'consult-ripgrep)
(global-set-key (kbd "C-c c l") 'consult-line)
(global-set-key (kbd "C-c c r") 'consult-recent-file)

(provide 'init-consult)
;;; init-consult.el ends here
