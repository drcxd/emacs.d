;;; init-cape --- summary
;;; Commentary:
;;; Code:
(require-package 'cape)
(require-package 'company)

(add-to-list 'completion-at-point-functions #'cape-dabbrev)
(add-to-list 'completion-at-point-functions #'cape-file)

(require 'company-clang)
(add-to-list 'completion-at-point-functions
             (cape-company-to-capf #'company-clang))

(provide 'init-cape)
;;; init-cape.el ends here
