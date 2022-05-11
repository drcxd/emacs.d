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

;; (setq custom-file (locate-user-emacs-file "custom.el"))

(require 'init-site-lisp)
(require 'init-elpa)

;; Allow users to provide an optional "init-preload-local.el"
;; (require 'init-preload-local nil t)

(require-package 'diminish)
(require-package 'scratch)

(require 'init-misc)
(require 'init-themes)
(require 'init-ligature)
(require 'init-face)
(require 'init-uniquify)
(require 'init-ibuffer)
(require 'init-modeline)

(require 'init-which-key)
(require 'init-linum-mode)
(require 'init-org)
(require 'init-ivy)
(require 'init-projectile)
(require 'init-dired)

(require 'init-prog)
(require 'init-company)
(require 'init-lsp)
(require 'init-lua-mode)
(require 'init-magit)

(require 'init-key-binding)
(require 'init-evil)

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruvbox))
 '(package-selected-packages
   '(lua-mode doom-modeline unicode-fonts which-key scratch ripgrep projectile powershell lsp-ui lsp-ivy hl-todo gruvbox-theme git-gutter format-all flycheck evil doom-themes diminish counsel company clang-format ace-window)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
