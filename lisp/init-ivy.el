;;; init-ivy --- summary
;;; Commentary:
;;; Code:
(require-package 'ivy)
(require-package 'counsel)
(require-package 'swiper)

;;; override default key bindings
;; (global-set-key (kbd "C-s") 'counsel-grep-or-swiper)
;; (global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;; (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;; (global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
;; (global-set-key (kbd "<f1> l") 'counsel-find-library)
;; (global-set-key (kbd "C-x b") 'counsel-switch-buffer)

(setq ivy-use-selectable-prompt t)

(ivy-mode 1)
(provide 'init-ivy)
;;; init-ivy.el ends here
