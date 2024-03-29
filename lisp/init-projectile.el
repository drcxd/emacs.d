;;; init-projectile --- summary
;;; Commentary:
;;; Code:
(require-package 'projectile)

(global-set-key (kbd "C-c pf") 'projectile-find-file)
(global-set-key (kbd "C-c pi") 'projectile-invalidate-cache)
(global-set-key (kbd "C-c ps") 'projectile-switch-project)
(global-set-key (kbd "C-c pd") 'projectile-dired)
(global-set-key (kbd "C-c pr") 'projectile-ripgrep)

(with-eval-after-load 'projectile
  (projectile-global-mode))

(provide 'init-projectile)
;;; init-projectile.el ends here
