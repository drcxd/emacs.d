;;; init-general --- summary
;;; Commentary:
;;; Code:
(require-package 'general)

(general-define-key
 :keymaps '(normal visual insert emacs motion)
 :prefix "SPC"
 ;; :non-normal-prefix "C-,"
 :non-normal-prefix "M-SPC"
 "" nil
 "xf" 'find-file
 "xc" 'save-buffers-kill-emacs
 "xb" 'switch-to-buffer
 "xs" 'save-buffer
 "xm" 'execute-extended-command
 "xk" 'kill-buffer
 "x1" 'delete-other-windows
 "x2" 'split-window-vertically
 "x3" 'split-window-horizontally
 "x0" 'delete-window
 "xh" 'mark-whole-buffer
 "xo" 'ace-window

 "sc" 'shell-command
 "ss" 'consult-line

 "ws" 'ace-swap-window

 "pf" 'projectile-find-file
 "ps" 'projectile-switch-project
 "pi" 'projectile-invalidate-cache

 "ll" 'lsp
 "ldc" 'lsp-find-declaration
 "ldf" 'lsp-find-definition
 "lo" 'lsp-clangd-find-other-file
 "lwr" 'lsp-workspace-restart
 "lws" 'lsp-workspace-shutdown
 "ls" 'consult-lsp-symbols
 "la" 'lsp-execute-code-action
 "ln" 'lsp-rename

 "ci" 'evilnc-comment-or-uncomment-lines
 "cc" 'evilnc-copy-and-comment-lines

 "hs" 'highlight-symbol
 "hr" 'highlight-symbol-remove-all

 "gg" 'magit

 "vs" 'vc-dir
 "vg" 'vc-annotate
 "vl" 'vc-print-log
 "ve" 'vc-ediff
 "vu" 'vc-revert
 "vd" 'vc-diff

 "rf" 'consult-recent-file

 "tt" 'modus-themes-toggle
 "ts" 'text-scale-adjust

 "fm" 'my-focus-mode
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
 :states '(normal insert visual emacs)
 :keymaps 'org-mode-map
 :prefix "SPC"
 :non-normal-prefix "M-SPC"
 "" nil
 "me" 'org-export-dispatch
 "mtp" 'org-insert-structure-template
 "mtd" 'org-todo
 "mts" 'org-time-stamp
 "mh" 'org-entities-help)

(general-define-key "<f5>" 'embark-act)

(require 'general)
(provide 'init-general)
;;; init-general.el ends here
