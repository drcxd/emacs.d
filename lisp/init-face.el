;;; init-face --- summary
;;; Commentary:
;;; Code:

;; italic
(set-face-attribute 'italic nil
                    :slant 'italic
                    :underline nil)

;; markdown
(require-package 'markdown-mode)
(require 'markdown-mode)
(set-face-attribute 'markdown-code-face nil
                    :family "Cascadia Code")

(provide 'init-face)
;;; init-face.el ends here
