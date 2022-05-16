;;; init-evil --- summary
;;; Commentary:
;;; Code:
(require-package 'evil)
(require 'evil)

(evil-set-undo-system 'undo-redo)

(evil-set-initial-state 'dired-mode 'emacs)
(evil-set-initial-state 'compilation-mode 'emacs)
(evil-set-initial-state 'xref--xref-buffer-mode 'emacs)
(evil-set-initial-state 'diff-mode 'emacs)
(evil-set-initial-state 'log-edit-mode 'emacs)

;; use general to bind keys
;; (evil-set-leader '(normal visual) (kbd "<SPC>"))
;; (evil-define-key '(normal visual) 'global (kbd "<leader>xf") 'counsel-find-file)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>xc") 'save-buffers-kill-emacs)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>xb") 'counsel-switch-buffer)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>xs") 'save-buffer)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>xm") 'counsel-M-x)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>xk") 'kill-buffer)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>x1") 'delete-other-windows)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>x2") 'split-window-vertically)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>x3") 'split-window-horizontally)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>xo") 'ace-window)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>x0") 'delete-window)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>sc") 'shell-command)
;; (evil-define-key '(normal visual) 'global (kbd "M-,") 'xref-pop-marker-stack)
;; (evil-define-key '(normal visual) 'global (kbd "M-.") 'xref-find-definitions)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>xh") 'mark-whole-buffer)

;; ;;; projectile key bindings
;; (evil-define-key '(normal visual) 'global (kbd "<leader>pf") 'projectile-find-file)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>ps") 'projectile-switch-project)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>pi") 'projectile-invalidate-cache)

;; ;;; lsp key bindings
;; (evil-define-key '(normal visual) 'global (kbd "<leader>ll") 'lsp)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>ld") 'lsp-find-declaration)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>lo") 'lsp-clangd-find-other-file)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>lw") 'lsp-workspace-restart)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>ls") 'lsp-workspace-shutdown)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>li") 'lsp-find-definition)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>la") 'lsp-execute-code-action)

;; ;; evil-nerd-commenter keys
;; (evil-define-key '(normal visual) 'global (kbd "<leader>ci") 'evilnc-comment-or-uncomment-lines)
;; (evil-define-key '(normal visual) 'global (kbd "<leader>cc") 'evilnc-copy-and-comment-lines)

;; ;; magit keys
;; (evil-define-key '(normal visual) 'global (kbd "<leader>gg") 'magit)

;; evil-escape
(require-package 'evil-escape)
(require 'evil-escape)
(setq-default evil-escape-key-sequence "jk")
(setq-default evil-escape-delay 0.1)
(evil-escape-mode)

(evil-mode 1)
(provide 'init-evil)
;;; init-evil.el ends here
