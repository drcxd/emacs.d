;;; init-face --- summary
;;; Commentary:
;;; Code:

(add-to-list 'default-frame-alist '(font . "Cascadia Code-16"))
(set-fontset-font "fontset-default" 'han "Microsoft Yahei")

(set-face-attribute 'default nil :font "Cascadia Code")
(set-face-attribute 'fixed-pitch nil :font "Cascadia Code")
(set-face-attribute 'variable-pitch nil :font "FiraGo")

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
