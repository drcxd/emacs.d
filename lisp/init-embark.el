;;; init-embark --- summary
;;; Commentary:
;;; Code:
(require-package 'embark)
(require-package 'embark-consult)
(with-eval-after-load 'consult
  (with-eval-after-load 'embark
    (require 'embark-consult)))
(provide 'init-embark)
;;; init-embark.el ends here
