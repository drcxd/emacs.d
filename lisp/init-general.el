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

 "ws" 'ace-swap-window

 "pf" 'projectile-find-file
 "ps" 'projectile-switch-project
 "pi" 'projectile-invalidate-cache

 "ll" 'lsp

 "ci" 'evilnc-comment-or-uncomment-lines
 "cc" 'evilnc-copy-and-comment-lines
 "co" 'compile

 "cg" 'consult-ripgrep
 "cl" 'consult-line
 "cr" 'consult-recent-file

 "hs" 'highlight-symbol
 "hr" 'highlight-symbol-remove-all

 "mg" 'magit

 "gg" 'git-gutter

 "vs" 'vc-dir
 "vg" 'vc-annotate
 "vl" 'vc-print-log
 "ve" 'vc-ediff
 "vu" 'vc-revert
 "vd" 'vc-diff

 "tt" 'modus-themes-toggle
 "ts" 'text-scale-adjust

 "fm" 'my-focus-mode

 "ev" 'eval-region
 "el" 'eval-last-sexp
 "ee" 'eval-expression

 "bs" 'bookmark-set
 "bj" 'bookmark-jump
 "br" 'bookmark-rename
 "bd" 'bookmark-delete

 "of" 'org-roam-node-find
 "oi" 'org-roam-node-insert
 "oa" 'org-roam-tag-add
 "or" 'org-roam-tag-remove
 ;; "or" 'hydra-org-roam/body

 "dn" 'denote
 "dl" 'denote-link
 "db" 'denote-link-backlinks
 "df" 'denote-link-find-file

 "n" 'hydra-navigation/body
 )

(general-define-key
 :states 'normal
 "M-." 'xref-find-definitions
 "M-," 'xref-pop-marker-stack
 )

(general-define-key
 :states 'emacs
 :keymaps 'dired-mode-map
 :non-normal-prefix "M-SPC"
 "at" 'org-attach-dired-to-subtree
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
 "ph" 'org-previous-visible-heading
 "nh" 'org-next-visible-heading
 "at" 'org-attach
 "ag" 'org-agenda
 "pm" 'org-do-promote
 "dm" 'org-do-demote)

(general-define-key "<f5>" 'embark-act)

(general-define-key
 :definer 'minor-mode
 :states '(normal insert visual emacs)
 :keymaps 'lsp-mode
 :prefix "SPC m"
 :non-normal-prefix "M-SPC m"
 "" nil
 "s" 'consult-lsp-symbols
 "dg" 'consult-lsp-diagnostics
 "dc" 'lsp-find-declaration
 "df" 'lsp-find-definition
 "o" 'lsp-clangd-find-other-file
 "wr" 'lsp-workspace-restart
 "ws" 'lsp-workspace-shutdown
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
