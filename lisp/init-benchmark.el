;;; init-benchmark --- summary
;;; Commentary:
;;; Code:
(require-package 'benchmark-init)
(require 'benchmark-init)
(add-hook 'after-init-hook 'benchmark-init/deactivate)
(provide 'init-benchmark)
;;; init-benchmark.el ends here
