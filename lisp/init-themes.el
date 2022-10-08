;;; init-themes.el --- Defaults for themes -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; (require-package 'doom-themes)
;; (require-package 'gruvbox-theme)

;;; modus themes
(require-package 'modus-themes)

(with-eval-after-load 'modus-themes
  (setq modus-themes-italic-constructs t
        modus-themes-bold-constructs nil
        modus-themes-mixed-fonts t
        modus-themes-variable-pitch-ui t
        modus-themes-hl-line '(accented intense)
        ))

(defun my-modus-setup ()
  "Override some modus themes faces."
  (modus-themes-with-colors
    (custom-set-faces
     `(git-gutter:added ((,class :background ,green-fringe-bg :foreground ,green-fringe-bg)))
     `(git-gutter:deleted ((,class :background ,red-fringe-bg :foreground ,red-fringe-bg)))
     `(git-gutter:modified ((,class :background ,yellow-fringe-bg :foreground ,yellow-fringe-bg)))
     `(flycheck-fringe-error ((,class :background ,bg-main :foreground ,fg-lang-error)))
     `(flycheck-fringe-info ((,class :background ,bg-main :foreground ,fg-lang-note)))
     `(flycheck-fringe-warning ((,class :background ,bg-main :foreground ,fg-lang-warning)))
     )))
(add-hook 'modus-themes-after-load-theme-hook #'my-modus-setup)

(defun my-use-modus-themes ()
  (modus-themes-load-operandi)
  (global-set-key (kbd "C-c tt") 'modus-themes-toggle))

;; (my-use-modus-themes)

;; ef themes
(require-package 'ef-themes)

(with-eval-after-load 'ef-themes
  (setq
   ef-themes-to-toggle '(ef-bio ef-frost)
   ef-themes-mixed-fonts t
   ef-themes-variable-pitch-ui t
   )
  )

(defun my-use-ef-themes ()
  (ef-themes-select 'ef-bio)
  (global-set-key (kbd "C-c tt") 'ef-themes-toggle)
  )

(my-use-ef-themes)

(provide 'init-themes)
;;; init-themes.el ends here
