;;; init-company --- summary
;;; Commentary:
;;; Code:
(require-package 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-transformers '(company-sort-prefer-same-case-prefix))
(provide 'init-company)
;;; init-company.el ends here
