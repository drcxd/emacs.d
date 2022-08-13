;;; init-corfu --- summary
;;; Commentary:
;;; Code:
(require-package 'corfu)
(global-corfu-mode)
(setq corfu-auto t
      corfu-cycle t
      corfu-quit-at-boundary 'separator
      corfu-quit-no-match t
      corfu-preview-current nil)

(defun corfu-enable-in-minibuffer ()
  "Enable Corfu in the minibuffer if `completion-at-point' is bound."
  (when (where-is-internal #'completion-at-point (list (current-local-map)))
    (corfu-mode 1)))
(add-hook 'minibuffer-setup-hook #'corfu-enable-in-minibuffer)

(define-key corfu-map (kbd "C-n") 'corfu-next)
(define-key corfu-map (kbd "C-p") 'corfu-previous)
(define-key corfu-map (kbd "<tab>") 'corfu-next)
(define-key corfu-map (kbd "S-<tab>") 'corfu-previous)
(define-key corfu-map (kbd "C-g") 'corfu-quit)
(define-key corfu-map (kbd "<escape>") 'corfu-quit)
(define-key corfu-map (kbd "SPC") 'corfu-insert-separator)

(provide 'init-corfu)
;;; init-corfu.el ends here
