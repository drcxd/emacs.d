;;; init-corfu-lsp --- summary
;;; Commentary:
;;; Code:
(require-package 'corfu)
(require-package 'lsp-mode)
(require-package 'cape)

;; corfu completion setup
(setq lsp-completion-provider :none)
(defun corfu-lsp-setup ()
  (setf (alist-get 'styles (alist-get 'lsp-capf completion-category-defaults))
        '(orderless))
  (advice-add #'lsp-completion-at-point :around #'cape-wrap-noninterruptible))
(add-hook 'lsp-completion-mode-hook #'corfu-lsp-setup)

(provide 'init-corfu-lsp)
;;; init-corfu-lsp.el ends here
