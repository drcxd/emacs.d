;;; init-diminish --- summary
;;; Commentary:
;;; Code:

(require-package 'diminish)

(diminish 'abbrev-mode)
(diminish 'visual-line-mode)

(diminish 'which-key-mode)
(diminish 'git-gutter-mode)
(diminish 'eldoc-mode)

(add-hook 'hs-minor-mode-hook (lambda () (diminish 'hs-minor-mode)))
(add-hook 'yas-minor-mode-hook (lambda () (diminish 'yas-minor-mode)))
(add-hook 'projectile-mode-hook (lambda () (diminish 'projectile-mode)))
(add-hook 'logos-focus-mode-hook (lambda ()
                                   (diminish 'logos-focus-mode)
                                   (diminish 'buffer-face-mode)))
(add-hook 'olivetti-mode-hook (lambda () (diminish 'olivetti-mode)))
(add-hook 'auto-revert-mode-hook (lambda () (diminish 'auto-revert-mode)))
(add-hook 'flycheck-mode-hook (lambda () (diminish 'flycheck-mode)))
(add-hook 'tree-sitter-mode-hook (lambda () (diminish 'tree-sitter-mode)))

(provide 'init-diminish)
;;; init-diminish.el ends here
