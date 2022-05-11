;;; init-prog --- summary
;;; Commentary:
;;; Code:
(add-hook 'prog-mode-hook (lambda () (display-fill-column-indicator-mode t)))
(add-hook 'prog-mode-hook (lambda () (setq show-trailing-whitespace t)))

(require-package 'clang-format)
(require-package 'inheritenv)
(require-package 'language-id)
(require-package 'format-all)
(require-package 'flycheck)

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
(add-hook 'prog-mode-hook 'git-gutter-mode)

;; doxygen documentation style
(setq-default c-doc-comment-style
	      '((java-mode . javadoc)
		(pike-mode . autodoc)
		(c-mode    . doxygen)
		(c++-mode  . doxygen)))

(provide 'init-prog)
;;; init-prog.el ends here
