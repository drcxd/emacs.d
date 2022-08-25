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
;; (require 'init-preload-local nil t)
(require 'init-benchmark)

(require-package 'diminish)
(require-package 'scratch)

(require 'init-misc)
(require 'init-uniquify)
(require 'init-ibuffer)

(require 'init-which-key)
(require 'init-linum-mode)
(require 'init-org)
(require 'init-note)

;; (require 'init-ivy)
;; (require 'init-prescient)
(require 'init-vertico)
(require 'init-orderless)
(require 'init-marginalia)
(require 'init-embark)
(require 'init-consult)

(require 'init-projectile)
(require 'init-dired)

;; (require 'init-company)
(require 'init-corfu)
(require 'init-cape)

(require 'init-prog)
(require 'init-lsp)
(require 'init-lua-mode)
(require 'init-magit)
(require 'init-yasnippet)
(require 'init-tree-sitter)

(require 'init-corfu-lsp)

(require 'init-key-binding)
;; (require 'init-evil)
(require 'init-hydra)
;; (require 'init-general)
(require 'init-meow)

(require 'init-face)
(require 'init-themes)
(require 'init-ligature)
(require 'init-modeline)

;; Allow access from emacsclient
(add-hook 'after-init-hook
	  (lambda ()
	    (require 'server)
	    (unless (server-running-p)
	      (server-start))))

(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
;;; init.el ends here
