;;; init-elpa.el --- Settings and helpers for package.el -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq make-backup-files nil)

;; if use hunspell in windows, uncomment this block
;; (setq ispell-local-dictionary "hunspelldict")
;; (setq ispell-local-dictionary-alist
;;       '(("hunspelldict" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil ("-d" "en_US") nil utf-8)))
;; (setq ispell-hunspell-dictionary-alist ispell-local-dictionary-alist)
;; (setq ispell-hunspell-dict-paths-alist '(("C:\\Hunspell")))

(setq inhibit-splash-screen t)

;;; useful packages
(require-package 'ripgrep)
(require-package 'powershell)

;;; ace-window
(require-package 'ace-window)
(with-eval-after-load 'ace-window
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)))
(define-key (current-global-map) [remap other-window] 'ace-window)
(global-set-key (kbd "C-c ws") 'ace-swap-window)

;;; hide dos eol
(defun remove-dos-eol ()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

;; wgrep
(require-package 'wgrep)

;; auto save
(auto-save-visited-mode)
(setq auto-save-visited-interval 2)

;; auto revert
(global-auto-revert-mode)

;; no tabs
(setq-default indent-tabs-mode nil)

;; recentf
(recentf-mode 1)

;; zoom
(require-package 'zoom)
(with-eval-after-load 'zoom
  (setq zoom-size '(0.618 . 0.618)))

;; windows specific settings
(if (eq system-type 'windows-nt)
    (setq find-program "C:/msys64/usr/bin/find.exe"))

;; hide title bar but still allow drag to resize
;; see https://www.reddit.com/r/emacs/comments/b2r2oj/is_it_possible_to_disable_or_hide_the_titlebar_in/
(add-to-list 'default-frame-alist '(undecorated . t))
(add-to-list 'default-frame-alist '(drag-internal-border . 1))
(add-to-list 'default-frame-alist '(internal-border-width . 5))
(add-to-list 'default-frame-alist '(width . 0.5))
(add-to-list 'default-frame-alist '(height . 0.5))
(add-to-list 'default-frame-alist '(top . 0.25))
(add-to-list 'default-frame-alist '(left . 0.25))

(provide 'init-misc)
;;; init-misc.el ends here
