;;; init-themes.el --- Defaults for themes -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; (require-package 'doom-themes)
;; (require-package 'gruvbox-theme)

;;; modus themes
(require-package 'modus-themes)

(defun my-modus-setup ()
  "Override some modus themes faces."
  (modus-themes-with-colors
    (custom-set-faces
     ;; `(git-gutter:added ((,class :background ,green-fringe-bg :foreground ,green-fringe-bg)))
     ;; `(git-gutter:deleted ((,class :background ,red-fringe-bg :foreground ,red-fringe-bg)))
     ;; `(git-gutter:modified ((,class :background ,yellow-fringe-bg :foreground ,yellow-fringe-bg)))
     ;; `(flycheck-fringe-error ((,class :background ,bg-alt :foreground ,fg-lang-error)))
     ;; `(flycheck-fringe-info ((,class :background ,bg-alt :foreground ,fg-lang-note)))
     ;; `(flycheck-fringe-warning ((,class :background ,bg-alt :foreground ,fg-lang-warning)))
     `(lsp-ui-doc-background ((,class :background ,bg-alt))))))

(with-eval-after-load 'modus-themes
  (setq modus-themes-italic-constructs t
        modus-themes-bold-constructs nil
        modus-themes-mixed-fonts t
        modus-themes-variable-pitch-ui t
        modus-themes-mode-line '(borderless))
  (add-hook 'modus-themes-after-load-theme-hook #'my-modus-setup))

(defun my-use-modus-themes ()
  (interactive)
  (mapc #'disable-theme custom-enabled-themes)
  (modus-themes-load-operandi)
  (global-set-key (kbd "C-c tg") 'modus-themes-toggle))

;; ef themes
(require-package 'ef-themes)

;;; make the modeline like the modus-themes default
(defun my-ef-themes-mode-line ()
  "Tweak the style of the mode lines."
  (ef-themes-with-colors
    (custom-set-faces
     `(mode-line ((,c :background ,bg-active :foreground ,fg-main :box (:line-width 1 :color ,fg-dim))))
     `(mode-line-inactive ((,c :box (:line-width 1 :color ,bg-active)))))))

(defun my-ef-themes-custom-faces ()
  "My customizations on top of Ef themes.
This function is added to the `ef-themes-post-load-hook'."
  (ef-themes-with-colors
    (custom-set-faces
     `(lsp-ui-doc-background ((,c :background ,bg-alt))))))

(with-eval-after-load 'ef-themes
  (setq
   ef-themes-to-toggle '(ef-light ef-dark)
   ef-themes-mixed-fonts t
   ef-themes-variable-pitch-ui t
   )
  (with-eval-after-load 'tree-sitter
    (add-hook 'tree-sitter-hl-mode-hook (lambda () (set-face-attribute 'tree-sitter-hl-face:punctuation nil :inherit nil))))
  (add-hook 'ef-themes-post-load-hook #'my-ef-themes-custom-faces)
  )

(defun my-use-ef-themes ()
  (interactive)
  (mapc #'disable-theme custom-enabled-themes)
  (ef-themes-select 'ef-light)
  (global-set-key (kbd "C-c tg") 'ef-themes-toggle)
  )

(require-package 'standard-themes)
(with-eval-after-load 'standard-themes
  (setq standard-themes-bold-constructs t
        standard-themes-italic-constructs t
        standard-themes-mixed-fonts t
        standard-themes-variable-pitch-ui t
        standard-themes-fringes 'subtle))

(defun my-use-standard-themes ()
  (interactive)
  (mapc #'disable-theme custom-enabled-themes)
  (load-theme 'standard-light :no-confirm)
  (global-set-key (kbd "C-c tg") 'standard-themes-toggle))

;; (my-use-ef-themes)
;; (my-use-modus-themes)
(my-use-standard-themes)

(provide 'init-themes)
;;; init-themes.el ends here
