;;; init-cape --- summary
;;; Commentary:
;;; Code:
(require-package 'cape)
(require-package 'company)

(require 'company-clang)
(add-to-list 'completion-at-point-functions
             (cape-company-to-capf #'company-clang))

(provide 'init-cape)
;;; init-cape.el ends here
