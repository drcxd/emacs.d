;;; init-face --- summary
;;; Commentary:
;;; Code:

(set-fontset-font "fontset-default" 'han "Microsoft Yahei")

(set-face-attribute 'default nil
                    :font "Iosevka Comfy"
                    :height 160)
(set-face-attribute 'fixed-pitch nil
                    :font "Iosevka Comfy"
                    :height 1.0)
(set-face-attribute 'variable-pitch nil
                    :font "Iosevka Comfy Duo"
                    :height 1.0)

;; italic
(set-face-attribute 'italic nil
                    :slant 'italic
                    :underline nil)
;;; unicode
(require-package 'unicode-fonts)
(require 'unicode-fonts)
(unicode-fonts-setup)

(provide 'init-face)
;;; init-face.el ends here
