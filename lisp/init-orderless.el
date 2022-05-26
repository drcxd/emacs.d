;;; init-orderless --- summary
;;; Commentary:
;;; Code:
(require-package 'orderless)
;; (setq completion-styles '(partial-completion orderless basic)
(setq completion-styles '(orderless basic)
      completion-category-defaults nil
      completion-category-overrides '((file (styles partial-completion))))
(provide 'init-orderless)
;;; init-orderless.el ends here

