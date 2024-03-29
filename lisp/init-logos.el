;;; init-logos --- summary
;;; Commentary:
;;; Code:
(require-package 'olivetti)
(require-package 'logos)

(with-eval-after-load 'logos
  (setq logos-outlines-are-pages t)
  (setq-default logos-hide-mode-line nil
                logos-hide-buffer-boundaries nil
                logos-hide-fringe t
                logos-variable-pitch t
                logos-buffer-read-only nil
                logos-olivetti t)
  (with-eval-after-load 'modus-themes
    (add-hook 'modus-themes-after-load-theme-hook #'logos-update-fringe-in-buffers))
  (with-eval-after-load 'ef-themes
    (add-hook 'ef-themes-post-load-hook #'logos-update-fringe-in-buffers))
  )

(global-set-key (kbd "C-c tl") 'logos-focus-mode)
(global-set-key (kbd "C-c tn") 'logos-narrow-dwim)
(global-set-key (kbd "C-c tf") 'logos-forward-page-dwim)
(global-set-key (kbd "C-c tb") 'logos-backward-page-dwim)

(provide 'init-logos)
;;; init-logos.el ends here
