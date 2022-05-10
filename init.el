;;; init.el --- summary
;;; Commentary:

;;; Code:

;; Produce backtraces when errors occur: can be helpful to diagnose
;; startup issues

;; (setq debug-on-error t)
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Adjust garbage collection thresholds during startup, and thereafter

;; (let ((normal-gc-cons-threshold (* 20 1024 1024))
;;       (init-gc-cons-threshold (* 128 1024 1024)))
;;   (setq gc-cons-threshold init-gc-cons-threshold)
;;   (add-hook 'emacs-startup-hook
;;             (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

;; Bootstrap config

(setq custom-file (locate-user-emacs-file "custom.el"))

(require 'init-site-lisp)
(require 'init-elpa)

;; Allow users to provide an optional "init-preload-local.el"
(require 'init-preload-local nil t)

(require-package 'diminish)
(require-package 'scratch)

(require 'init-misc)
(require 'init-themes)
(require 'init-ligature)
(require 'init-face)
(require 'init-uniquify)
(require 'init-ibuffer)
(require 'init-which-key)
(require 'init-linum-mode)
(require 'init-org)

(require 'init-ivy)
(require 'init-projectile)

(require 'init-prog)
(require 'init-company)
(require 'init-lsp)

(require 'init-evil)
(provide 'init)
;;; init.el ends here