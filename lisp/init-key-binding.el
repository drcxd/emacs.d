;;; init-evil --- summary
;;; Commentary:
;;; Code:
;; (global-set-key (kbd "<f1> k") 'describe-key)
;; (global-set-key (kbd "C-x o") 'ace-window)
(global-set-key (kbd "C-c no") 'compile)

(global-set-key (kbd "C-c vs") 'vc-dir)
(global-set-key (kbd "C-c vg") 'vc-annotate)
(global-set-key (kbd "C-c vl") 'vc-print-log)
(global-set-key (kbd "C-c ve") 'vc-ediff)
(global-set-key (kbd "C-c vu") 'vc-revert)
(global-set-key (kbd "C-c vd") 'vc-diff)

(global-set-key (kbd "C-c bs") 'bookmark-set)
(global-set-key (kbd "C-c bj") 'bookmark-jump)
(global-set-key (kbd "C-c br") 'bookmark-rename)
(global-set-key (kbd "C-c bd") 'bookmark-delete)

(provide 'init-key-binding)
;;; init-key-binding.el ends here
