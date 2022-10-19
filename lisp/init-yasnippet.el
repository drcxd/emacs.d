;;; init-yasnippet --- summary
;;; Commentary:
;;; Code:
(require-package 'yasnippet)
(add-hook 'prog-mode-hook 'yas-minor-mode)
(global-set-key (kbd "C-c Y") 'yas-reload-all)
(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
