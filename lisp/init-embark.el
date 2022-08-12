;;; init-embark --- summary
;;; Commentary:
;;; Code:
(require-package 'embark)
(require-package 'embark-consult)
(with-eval-after-load 'consult
  (with-eval-after-load 'embark
    (require 'embark-consult)))
(global-set-key (kbd "<f5>") 'embark-act)
(provide 'init-embark)
;;; init-embark.el ends here
