;;; init-consult --- summary
;;; Commentary:
;;; Code:
(require-package 'consult)
(setq xref-show-xrefs-function #'consult-xref
      xref-show-definitions-function #'consult-xref)

(if (eq system-type 'windows-nt)
    (add-to-list 'process-coding-system-alist
                 '("[rR][gG]" . (utf-8 . gbk-dos))))

(global-set-key (kbd "C-x b") 'consult-buffer)
(global-set-key (kbd "C-c ng") 'consult-ripgrep)
(global-set-key (kbd "C-c nl") 'consult-line)
(global-set-key (kbd "C-c nr") 'consult-recent-file)

(provide 'init-consult)
;;; init-consult.el ends here
