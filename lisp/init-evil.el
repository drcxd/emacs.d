;;; init-evil --- summary
;;; Commentary:
;;; Code:
(require-package 'evil)
(require 'evil)

(evil-set-initial-state 'dired-mode 'emacs)
(evil-set-leader 'normal (kbd "<SPC>"))
(evil-define-key 'normal 'global (kbd "<leader>xf") 'counsel-find-file)
(evil-define-key 'normal 'global (kbd "<leader>xc") 'save-buffers-kill-emacs)
(evil-define-key 'normal 'global (kbd "<leader>xb") 'counsel-switch-buffer)
(evil-define-key 'normal 'global (kbd "<leader>xs") 'save-buffer)
(evil-define-key 'normal 'global (kbd "<leader>xm") 'counsel-M-x)
(evil-define-key 'normal 'global (kbd "<leader>xk") 'kill-buffer)
(evil-define-key 'normal 'global (kbd "<leader>x1") 'delete-other-windows)
(evil-define-key 'normal 'global (kbd "<leader>x2") 'split-window-vertically)
(evil-define-key 'normal 'global (kbd "<leader>x3") 'split-window-horizontally)
(evil-define-key 'normal 'global (kbd "<leader>xo") 'ace-window)
(evil-define-key 'normal 'global (kbd "<leader>x0") 'delete-window)
(evil-define-key 'normal 'global (kbd "M-,") 'xref-pop-marker-stack)
(evil-define-key 'normal 'global (kbd "M-.") 'xref-find-definitions)

;;; projectile key bindings
(evil-define-key 'normal 'global (kbd "<leader>pf") 'projectile-find-file)
(evil-define-key 'normal 'global (kbd "<leader>ps") 'projectile-switch-project)
(evil-define-key 'normal 'global (kbd "<leader>pi") 'projectile-invalidate-cache)

;;; lsp key bindings
(evil-define-key 'normal 'global (kbd "<leader>ll") 'lsp)
(evil-define-key 'normal 'global (kbd "<leader>ld") 'lsp-find-declaration)
(evil-define-key 'normal 'global (kbd "<leader>lo") 'lsp-clangd-find-other-file)
(evil-define-key 'normal 'global (kbd "<leader>lw") 'lsp-workspace-restart)
(evil-define-key 'normal 'global (kbd "<leader>ls") 'lsp-workspace-shutdown)
(evil-define-key 'normal 'global (kbd "<leader>li") 'lsp-find-definition)

(evil-mode 1)
(provide 'init-evil)
;;; init-evil.el ends here
