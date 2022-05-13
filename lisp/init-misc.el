;;; init-elpa.el --- Settings and helpers for package.el -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(setq make-backup-files nil)

(add-to-list 'default-frame-alist '(font . "Cascadia Code-16"))
(set-fontset-font "fontset-default" 'han "Microsoft Yahei-18")

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
(require-package 'ace-window)

;;; ace-window
(require 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

;;; unicode
(require-package 'unicode-fonts)
(require 'unicode-fonts)
(unicode-fonts-setup)

;;; hide dos eol
(defun remove-dos-eol ()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

;; wgrep
(require-package 'wgrep)
(require 'wgrep)

;; auto save
(auto-save-visited-mode)
(setq auto-save-visited-interval 2)

(provide 'init-misc)
;;; init-misc.el ends here
