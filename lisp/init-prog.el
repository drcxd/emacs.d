;;; init-prog --- summary
;;; Commentary:
;;; Code:
(defun prog-mode-setup ()
  (display-fill-column-indicator-mode t)
  (setq show-trailing-whitespace t)
  (electric-pair-mode t)
  (hs-minor-mode 1)
  (hl-line-mode 1))
(add-hook 'prog-mode-hook 'prog-mode-setup)

(require-package 'clang-format)
(require-package 'inheritenv)
(require-package 'language-id)
(require-package 'format-all)

;; flycheck
(require-package 'flycheck)
;; (global-flycheck-mode)

;; (require-package 'citre)

;; glsl
;; (require-package 'glsl-mode)
;; (add-to-list 'auto-mode-alist '("\\.glsl\\'" . glsl-mode))
;; (add-to-list 'auto-mode-alist '("\\.vert\\'" . glsl-mode))
;; (add-to-list 'auto-mode-alist '("\\.frag\\'" . glsl-mode))
;; (add-to-list 'auto-mode-alist '("\\.geom\\'" . glsl-mode))
;; (add-to-list 'auto-mode-alist '("\\.vs\\'" . glsl-mode))
;; (add-to-list 'auto-mode-alist '("\\.fs\\'" . glsl-mode))
;; (autoload 'glsl-mode "glsl-mode" nil t)

;; hl-todo
(require-package 'hl-todo)
(add-hook 'prog-mode-hook 'hl-todo-mode)
(setq hl-todo-highlight-punctuation ":"
      hl-todo-keyword-faces
      `(("TODO" warning bold)
        ("FIXME" error bold)
        ("HACK" font-lock-constant-face bold)
        ("REVIEW" font-lock-keyword-face bold)
        ("NOTE" success bold)
        ("DEPRECATED" font-lock-doc-face bold)
        ("BUG" error bold)))

;; git-gutter
(require-package 'git-gutter)
(require 'git-gutter)
(setq git-gutter:handled-backends '(git svn))
(add-hook 'prog-mode-hook 'git-gutter-mode)
(global-set-key (kbd "C-c G") 'git-gutter)

(require-package 'git-gutter-fringe)

;; or diff-hl if git-gutter does not work
;; (require-package 'diff-hl)
;; (require 'diff-hl)
;; (add-hook 'prog-mode-hook 'diff-hl-mode)

;; doxygen documentation style
(setq-default c-doc-comment-style
	      '((java-mode . javadoc)
		(pike-mode . autodoc)
		(c-mode    . doxygen)
		(c++-mode  . doxygen)))

;; evil-nerd-commenter
(require-package 'evil-nerd-commenter)
(global-set-key (kbd "C-c d") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "C-c D") 'evilnc-copy-and-comment-lines)

;; highlight symbol
(require-package 'highlight-symbol)
(global-set-key (kbd "C-c e s") 'highlight-symbol)
(global-set-key (kbd "C-c e a") 'highlight-symbol-remove-all)

(provide 'init-prog)
;;; init-prog.el ends here
