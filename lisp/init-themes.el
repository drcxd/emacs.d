;;; init-themes.el --- Defaults for themes -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; (require-package 'doom-themes)
;; (require-package 'gruvbox-theme)
(require-package 'modus-themes)

;;; modus themes customization

(with-eval-after-load 'modus-themes
  (setq modus-themes-italic-constructs t
        modus-themes-bold-constructs nil
        modus-themes-mixed-fonts t
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
(modus-themes-load-operandi)

(provide 'init-themes)
;;; init-themes.el ends here
