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

(defvar my-denote-directory "~/note/")
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
          (denote-file-type-prompt)
          (denote-subdirectory-prompt)))

;;;###autoload
(defun denote-open-or-create-with-date ()
  "Invoke `denote-open-or-create' but also prompt for date.

The date can be in YEAR-MONTH-DAY notation like 2022-06-30 or
that plus the time: 2022-06-16 14:30.  When the user option
`denote-date-prompt-use-org-read-date' is non-nil, the date
prompt uses the more powerful Org+calendar system.

This is the equivalent to calling `denote-open-or-create' when
`denote-prompts' is set to \\='(date title keywords)."
  (declare (interactive-only t))
  (interactive)
  (let ((denote-prompts '(date title keywords)))
    (call-interactively #'denote-open-or-create)))

;;;###autoload
(defun denote-open-or-create-with-type ()
  "Invoke `denote-open-or-create' but also prompt for file type.
This is the equivalent to calling `denote-open-or-create' when
`denote-prompts' is set to \\='(type title keywords)."
  (declare (interactive-only t))
  (interactive)
  (let ((denote-prompts '(type title keywords)))
    (call-interactively #'denote-open-or-create)))

;;;###autoload
(defun denote-open-or-create-with-subdirectory ()
  "Invoke `denote-open-or-create' but also prompt for subdirectory.
This is the equivalent to calling `denote-open-or-create' when
`denote-prompts' is set to \\='(subdirectory title keywords)."
  (declare (interactive-only t))
  (interactive)
  (let ((denote-prompts '(subdirectory title keywords)))
    (call-interactively #'denote-open-or-create)))

;;;###autoload
(defun denote-open-or-create-with-template ()
  "Invoke `denote-open-or-create' but also prompt for template.
This is the equivalent to calling `denote-open-or-create' when
`denote-prompts' is set to \\='(template title keywords).

For templates, refer to `denote-templates'."
  (declare (interactive-only t))
  (interactive)
  (let ((denote-prompts '(template title keywords)))
    (call-interactively #'denote-open-or-create)))

(global-set-key (kbd "C-c nd") 'denote-open-or-create)
(global-set-key (kbd "C-c ns") 'denote-open-or-create-with-subdirectory)
(global-set-key (kbd "C-c nt") 'denote-open-or-create-with-type)
(global-set-key (kbd "C-c nl") 'denote-link-or-create)
(global-set-key (kbd "C-c nL") 'denote-link-find-backlink)
(global-set-key (kbd "C-c no") 'denote-link-find-file)
(global-set-key (kbd "C-c nN") 'denote-rename-file)
(global-set-key (kbd "C-c nn") 'denote-rename-file-using-front-matter)
(global-set-key (kbd "C-c nj") 'my-denote-journal)
(global-set-key (kbd "C-c na") 'denote-keywords-add)
(global-set-key (kbd "C-c nr") 'denote-keywords-remove)

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
    (denote keyword (denote-keywords-prompt))))
(global-set-key (kbd "C-c nc") 'my-consult-note)

(provide 'init-note)
;;; init-note.el ends here
