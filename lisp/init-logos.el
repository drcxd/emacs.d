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
                logos-olivetti t)
  (if (boundp 'modus-themes-after-load-theme-hook)
      (add-hook 'modus-themes-after-load-theme-hook #'logos-update-fringe-in-buffers))
  (if (boundp 'ef-themes-post-load-hook)
      (add-hook 'ef-themes-post-load-hook #'logos-update-fringe-in-buffers)))

(global-set-key (kbd "C-c tl") 'logos-focus-mode)
(global-set-key (kbd "C-c tn") 'logos-narrow-dwim)
(global-set-key (kbd "C-c tf") 'logos-forward-page-dwim)
(global-set-key (kbd "C-c tb") 'logos-backward-page-dwim)

(provide 'init-logos)
;;; init-logos.el ends here
