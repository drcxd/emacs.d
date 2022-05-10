;;; init-projectile --- summary
;;; Commentary:
;;; Code:
(require-package 'projectile)

(require 'projectile)
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)
(projectile-mode +1)
(provide 'init-projectile)
;;; init-projectile.el ends here
