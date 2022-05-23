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
(require 'init-uniquify)
(require 'init-ibuffer)
(require 'init-modeline)

(require 'init-which-key)
(require 'init-linum-mode)
(require 'init-org)
(require 'init-ivy)
(require 'init-projectile)
(require 'init-dired)
(require 'init-prescient)

(require 'init-prog)
(require 'init-company)
(require 'init-lsp)
(require 'init-lua-mode)
(require 'init-magit)

(require 'init-key-binding)
(require 'init-evil)
(require 'init-general)

(require 'init-face)
(require 'init-themes)
(require 'init-ligature)

;; Allow access from emacsclient
(add-hook 'after-init-hook
	  (lambda ()
	    (require 'server)
	    (unless (server-running-p)
	      (server-start))))

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(ivy-prescient which-key wgrep unicode-fonts scratch ripgrep projectile powershell olivetti modus-themes magit lua-mode lsp-ui lsp-ivy hl-todo highlight-symbol gruvbox-theme git-gutter-fringe general format-all flycheck evil-nerd-commenter evil-escape doom-themes doom-modeline diminish counsel company clang-format ace-window)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-fringe-error ((((class color) (min-colors 89)) :background "#000000" :foreground "#8f1f4b")))
 '(flycheck-fringe-info ((((class color) (min-colors 89)) :background "#000000" :foreground "#004f8f")))
 '(flycheck-fringe-warning ((((class color) (min-colors 89)) :background "#000000" :foreground "#6f4f00")))
 '(git-gutter:added ((((class color) (min-colors 89)) :background "#006700" :foreground "#006700")))
 '(git-gutter:deleted ((((class color) (min-colors 89)) :background "#8f1f4b" :foreground "#8f1f4b")))
 '(git-gutter:modified ((((class color) (min-colors 89)) :background "#6f4f00" :foreground "#6f4f00"))))
