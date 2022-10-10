;;; init-diminish --- summary
;;; Commentary:
;;; Code:

(require-package 'diminish)

(add-hook 'hs-minor-mode-hook (lambda () (diminish 'hs-minor-mode)))
(add-hook 'yas-minor-mode-hook (lambda () (diminish 'yas-minor-mode)))
(diminish 'which-key-mode)
(diminish 'git-gutter-mode)
(diminish 'eldoc-mode)
(add-hook 'projectile-mode-hook (lambda () (diminish 'projectile-mode)))
(add-hook 'logos-focus-mode-hook (lambda ()
                                   (diminish 'logos-focus-mode)
                                   (diminish 'buffer-face-mode)))
(add-hook 'olivetti-mode-hook (lambda () (diminish 'olivetti-mode)))
(diminish 'visual-line-mode)
(add-hook 'auto-revert-mode-hook (lambda () (diminish 'auto-revert-mode)))

(provide 'init-diminish)
;;; init-diminish.el ends here
