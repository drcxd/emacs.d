;;; init-general --- summary
;;; Commentary:
;;; Code:
(require-package 'general)

;; (general-define-key
;;  :keymaps 'motion
;;  :prefix "SPC"
;;  "" nil
;;  )

(general-define-key
 :keymaps '(normal visual insert emacs motion)
 :prefix "SPC"
 :non-normal-prefix "C-,"
 "" nil
 "xf" 'counsel-find-file
 "xc" 'save-buffers-kill-emacs
 "xb" 'counsel-switch-buffer
 "xs" 'save-buffer
 "xm" 'counsel-M-x
 "xk" 'kill-buffer
 "x1" 'delete-other-windows
 "x2" 'split-window-vertically
 "x3" 'split-window-horizontally
 "x0" 'delete-window
 "sc" 'shell-command
 "ss" 'counsel-grep-or-swiper
 "xh" 'mark-whole-buffer
 "xo" 'ace-window
 "ws" 'ace-swap-window

 "pf" 'projectile-find-file
 "ps" 'projectile-switch-project
 "pi" 'projectile-invalidate-cache

 "ll" 'lsp
 "ld" 'lsp-find-definition
 "lo" 'lsp-clangd-find-other-file
 "lr" 'lsp-workspace-restart
 "lp" 'lsp-workspace-shutdown
 "li" 'lsp-find-definition
 "la" 'lsp-execute-code-action
 "ls" 'lsp-ivy-workspace-symbol

 "ci" 'evilnc-comment-or-uncomment-lines
 "cc" 'evilnc-copy-and-comment-lines

 "hs" 'highlight-symbol
 "hr" 'highlight-symbol-remove-all

 "gg" 'magit
 )

(general-define-key
 :states 'normal
 "M-." 'xref-find-definitions
 "M-," 'xref-pop-marker-stack
 )

(general-define-key
 :states 'normal
 :keymaps 'org-mode-map
 "TAB" 'org-cycle
 )

(general-define-key
 "C-s" 'counsel-grep-or-swiper
 "M-x" 'counsel-M-x
 "C-x C-f" 'counsel-find-file
 "<f1> f" 'counsel-describe-function
 "<f1> v" 'counsel-describe-variable
 "<f1> o" 'counsel-describe-symbol
 "<f1> l" 'counsel-find-library
 "C-x b" 'counsel-switch-buffer
 )


(require 'general)
(provide 'init-general)
;;; init-general.el ends here
