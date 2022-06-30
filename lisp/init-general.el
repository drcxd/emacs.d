;;; init-general --- summary
;;; Commentary:
;;; Code:
(require-package 'general)

(general-define-key
 :states '(normal visual insert emacs motion)
 :prefix "SPC"
 ;; :non-normal-prefix "C-,"
 :non-normal-prefix "M-SPC"
 "" nil
 "xf" 'find-file
 "xc" 'save-buffers-kill-emacs
 "xb" 'consult-buffer
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

 "ci" 'evilnc-comment-or-uncomment-lines
 "cc" 'evilnc-copy-and-comment-lines
 "co" 'compile
 "cr" 'consult-ripgrep

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

 "ev" 'eval-region
 "el" 'eval-last-sexp
 "ee" 'eval-expression
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
 :prefix "SPC m"
 :non-normal-prefix "M-SPC m"
 "" nil
 "e" 'org-export-dispatch
 "tp" 'org-insert-structure-template
 "td" 'org-todo
 "ts" 'org-time-stamp
 "h" 'org-entities-help
 "p" 'org-previous-visible-heading
 "n" 'org-next-visible-heading)

(general-define-key "<f5>" 'embark-act)

(general-define-key
 :definer 'minor-mode
 :states '(normal insert visual emacs)
 :keymaps 'lsp-mode
 :prefix "SPC m"
 :non-normal-prefix "M-SPC m"
 "" nil
 "dc" 'lsp-find-declaration
 "df" 'lsp-find-definition
 "dg" 'consult-lsp-diagnostics
 "o" 'lsp-clangd-find-other-file
 "wr" 'lsp-workspace-restart
 "ws" 'lsp-workspace-shutdown
 "s" 'consult-lsp-symbols
 "a" 'lsp-execute-code-action
 "n" 'lsp-rename
 "g" 'lsp-ui-doc-glance
 )

(general-define-key
 :states '(normal insert visual emacs)
 :keymaps 'lua-mode-map
 :prefix "SPC m"
 :non-normal-prefix "M-SPC m"
 "" nil
 "m" 'lua-goto-matching-block
 )

(general-define-key
 :states 'insert
 :keymaps 'corfu-map
 "C-n" 'corfu-next
 "C-p" 'corfu-previous
 "<tab>" 'corfu-next
 "S-<tab>" 'corfu-previous
 "<escape>" 'corfu-quit
 "C-g" 'corfu-quit
 "SPC" 'corfu-insert-separator
 )
(general-add-advice '(corfu--setup corfu--teardown) :after 'evil-normalize-keymaps)

(require 'general)
(provide 'init-general)
;;; init-general.el ends here
