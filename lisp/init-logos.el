;;; init-logos --- summary
;;; Commentary:
;;; Code:
(require-package 'olivetti)
(require-package 'logos)
(autoload 'logos-focus-mode "logos" "Toggle focus mode" t)
(with-eval-after-load 'logos
  (setq logos-outlines-are-pages t)
  (setq-default logos-hide-mode-line nil
                logos-hide-buffer-boundaries nil
                logos-hide-fringe t
                logos-variable-pitch t
                logos-buffer-read-only nil
                logos-olivetti t))

(provide 'init-logos)
;;; init-logos.el ends here
