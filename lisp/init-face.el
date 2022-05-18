;;; init-face --- summary
;;; Commentary:
;;; Code:

(set-face-attribute 'default nil :font "Cascadia Code-16")
(set-face-attribute 'fixed-pitch nil :font "Cascadia Code-16")
(set-face-attribute 'variable-pitch nil :font "FiraGo-18")

;; italic
(set-face-attribute 'italic nil
                    :slant 'italic
                    :underline nil)

;; markdown
;; (require-package 'markdown-mode)
;; (require 'markdown-mode)
;; (set-face-attribute 'markdown-code-face nil
;;                     :family "Cascadia Code")

(provide 'init-face)
;;; init-face.el ends here
