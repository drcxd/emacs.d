;;; init-note --- summary
;;; Commentary:
;;; Code:
;; (require-package 'org-roam)
;; (with-eval-after-load 'org-roam
;;   (org-roam-db-autosync-mode)
;;   (setq org-roam-node-display-template
;;         (concat "${title} "
;;                 (propertize "${tags:*}" 'face 'org-tag))))

;; (require-package 'org-roam-ui)
;; (with-eval-after-load 'org-roam-ui
;;   (setq org-roam-ui-sync-theme nil
;;         org-roam-ui-follow t
;;         org-roam-ui-update-on-save t
;;         org-roam-ui-open-on-start nil))

;; (global-set-key (kbd "C-c ni") 'org-roam-node-insert)
;; (global-set-key (kbd "C-c nf") 'org-roam-node-find)
;; (global-set-key (kbd "C-c nt") 'org-roam-tag-add)
;; (global-set-key (kbd "C-c nT") 'org-roam-tag-remove)
;; (global-set-key (kbd "C-c nb") 'org-roam-buffer-display-dedicated)
;; (global-set-key (kbd "C-c nB") 'org-roam-buffer-toggle)

(defvar my-denote-directory "~/notes/")
(require-package 'denote)
(with-eval-after-load 'denote
  (setq denote-directory my-denote-directory)
  (setq denote-known-keywords '("emacs"))
  (setq denote-prompts '(title keywords)))
(autoload 'denote "denote" "Autoload for denote" t)

(defun my-denote-journal ()
  "Create an entry tagged 'journal'."
  (interactive)
  (denote (format-time-string "%A %e %B %Y")
          '("journal")
          "text"
          (denote--subdirs-prompt)))

(global-set-key (kbd "C-c nd") 'denote)
(global-set-key (kbd "C-c ns") 'denote-subdirectory)
(global-set-key (kbd "C-c nt") 'denote-type)
(global-set-key (kbd "C-c nl") 'denote-link)
(global-set-key (kbd "C-c nL") 'denote-link-backlinks)
(global-set-key (kbd "C-c no") 'denote-link-find-file)
(global-set-key (kbd "C-c nr") 'denote-rename-file)
(global-set-key (kbd "C-c nR") 'denote-rename-file-using-front-matter)
(global-set-key (kbd "C-c nj") 'my-denote-journal)

(require-package 'consult-notes)
(with-eval-after-load 'consult-notes
  (require 'denote)
  (setq consult-notes-sources
        `(("Notes" ?n ,denote-directory))))
(global-set-key (kbd "C-c nc") 'consult-notes)

(defun my-consult-note (keyword)
  "Find note using keyword recursively."
  (interactive
   (list (completing-read "Note: "
                          (directory-files-recursively (if (boundp 'denote-directory) denote-directory my-denote-directory) "."))))
  (if (file-exists-p keyword)
      (find-file keyword)
    (denote keyword
            (denote--keywords-prompt)
            nil
            (denote--subdirs-prompt))))
(global-set-key (kbd "C-c nc") 'my-consult-note)

(provide 'init-note)
;;; init-note.el ends here
