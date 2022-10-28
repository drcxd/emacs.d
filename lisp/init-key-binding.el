;;; init-evil --- summary
;;; Commentary:
;;; Code:
(global-set-key (kbd "C-c E") 'eval-region)
(global-set-key (kbd "C-c C") 'compile)
(global-set-key (kbd "C-c b") 'switch-to-buffer)
(global-set-key (kbd "C-c o") 'other-window)
(global-set-key (kbd "C-c k") 'kill-buffer)
(global-set-key (kbd "C-c S") 'shell-command)
(global-set-key (kbd "C-c w1") 'delete-other-windows)
(global-set-key (kbd "C-c w2") 'split-window-vertically)
(global-set-key (kbd "C-c w3") 'split-window-horizontally)
(global-set-key (kbd "C-c w0") 'delete-window)
(global-set-key (kbd "C-c z") 'hs-toggle-hiding)
(provide 'init-key-binding)
;;; init-key-binding.el ends here
