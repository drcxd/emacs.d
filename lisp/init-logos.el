;;; init-logos --- summary
;;; Commentary:
;;; Code:
(require-package 'olivetti)
(require-package 'logos)
(autoload 'logos-focus-mode "logos" "Toggle focus mode" t)
(with-eval-after-load 'logos
  (setq-default logos-hide-mode-line t
                logos-hide-buffer-boundaries t
                logos-hide-fringe t
                logos-variable-pitch t
                logos-buffer-read-only nil
                logos-scroll-lock t
                logos-olivetti t))

(provide 'init-logos)
;;; init-logos.el ends here
