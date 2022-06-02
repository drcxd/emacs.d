;;; init-elpa.el --- Settings and helpers for package.el -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(tool-bar-mode -1)
(menu-bar-mode -1)
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
(require-package 'ace-window)

;;; ace-window
(require 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

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

;; auto revert
(global-auto-revert-mode)

;; no tabs
(setq-default indent-tabs-mode nil)

;; recentf
(recentf-mode 1)

;; olivetti
(require-package 'olivetti)

(define-minor-mode my-focus-mode
  "My focus mode."
  :init-value nil
  :global nil
  (if my-focus-mode
      (progn
        (olivetti-mode 1)
        (unless (derived-mode-p 'prog-mode)
          (variable-pitch-mode 1)))
    (olivetti-mode -1)
    (variable-pitch-mode -1)
    (unless (derived-mode-p 'prog-mode)
      (variable-pitch-mode -1))))

;; hl-line-mode
(hl-line-mode 1)

(provide 'init-misc)
;;; init-misc.el ends here
