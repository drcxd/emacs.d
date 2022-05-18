;;; init-themes.el --- Defaults for themes -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'doom-themes)
(require-package 'gruvbox-theme)
(require-package 'modus-themes)

;;; modus themes customization
(require 'modus-themes)
;; (defun my-modus-setup ()
;;   "Doc string."
;;   (set-face-attribute 'git-gutter:added nil
;;                       :foreground (modus-themes-color 'green-fringe-bg)
;;                       :background (modus-themes-color 'green-fringe-bg))
;;   (set-face-attribute 'flycheck-fringe-error nil
;;                       :foreground (modus-themes-color 'red-fringe-bg)
;;                       :background (modus-themes-color 'bg-main)))
(defun my-modus-setup ()
  "Override some modus themes faces."
  (modus-themes-with-colors
    (custom-set-faces
     `(git-gutter:added ((,class :background ,green-fringe-bg :foreground ,green-fringe-bg)))
     `(flycheck-fringe-error ((,class :background ,bg-main :foreground ,red-fringe-bg)))
     )))
(add-hook 'modus-themes-after-load-theme-hook #'my-modus-setup)
;; (modus-themes-load-themes)
(modus-themes-load-vivendi)

;; Don't prompt to confirm theme safety. This avoids problems with
;; first-time startup on Emacs > 26.3.
(setq custom-safe-themes t)

;; If you don't customize it, this is the theme you get.
;; (setq-default custom-enabled-themes '(gruvbox))
(setq-default custom-enabled-themes '(modus-vivendi))

;; Ensure that themes will be applied even if they have not been
;; customized
(defun reapply-themes ()
  "Forcibly load the themes listed in `custom-enabled-themes'."
  (dolist (theme custom-enabled-themes)
    (unless (custom-theme-p theme)
      (load-theme theme)))
  (custom-set-variables `(custom-enabled-themes (quote ,custom-enabled-themes))))

;; (add-hook 'after-init-hook 'reapply-themes)

(provide 'init-themes)
;;; init-themes.el ends here
