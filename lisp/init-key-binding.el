;;; init-evil --- summary
;;; Commentary:
;;; Code:
;; (global-set-key (kbd "<f1> k") 'describe-key)
;; (global-set-key (kbd "C-x o") 'ace-window)
(global-set-key (kbd "C-c c o") 'compile)

(global-set-key (kbd "C-c v s") 'vc-dir)
(global-set-key (kbd "C-c v g") 'vc-annotate)
(global-set-key (kbd "C-c v l") 'vc-print-log)
(global-set-key (kbd "C-c v e") 'vc-ediff)
(global-set-key (kbd "C-c v u") 'vc-revert)
(global-set-key (kbd "C-c v d") 'vc-diff)

(global-set-key (kbd "C-c b s") 'bookmark-set)
(global-set-key (kbd "C-c b j") 'bookmark-jump)
(global-set-key (kbd "C-c b r") 'bookmark-rename)
(global-set-key (kbd "C-c b d") 'bookmark-delete)

(provide 'init-key-binding)
;;; init-key-binding.el ends here
