;;; init-note --- summary
;;; Commentary:
;;; Code:
(require-package 'org-roam)
(with-eval-after-load 'org-roam
  (org-roam-db-autosync-mode)
  (setq org-roam-node-display-template
        (concat "${title} "
                (propertize "${tags:*}" 'face 'org-tag))))

(require-package 'org-roam-ui)
(with-eval-after-load 'org-roam-ui
  (setq org-roam-ui-sync-theme nil
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start nil))

(global-set-key (kbd "C-c ni") 'org-roam-node-insert)
(global-set-key (kbd "C-c nf") 'org-roam-node-find)
(global-set-key (kbd "C-c nt") 'org-roam-tag-add)
(global-set-key (kbd "C-c nT") 'org-roam-tag-remove)
(global-set-key (kbd "C-c nb") 'org-roam-buffer-display-dedicated)
(global-set-key (kbd "C-c nB") 'org-roam-buffer-toggle)

(require-package 'denote)
(with-eval-after-load 'denote
  (setq denote-directory "~/notes/")
  (setq denote-known-keywords '("emacs")))

(global-set-key (kbd "C-c nd") 'denote)
(global-set-key (kbd "C-c nl") 'denote-link)
(global-set-key (kbd "C-c nL") 'denote-link-backlinks)
(global-set-key (kbd "C-c no") 'denote-link-find-file)

(require-package 'consult-notes)
(with-eval-after-load 'consult-notes
  (require 'denote)
  (setq consult-notes-sources
        `(("Notes" ?n ,denote-directory))))
(global-set-key (kbd "C-c nc") 'consult-notes)

(require 'denote)
(defun my-consult-note (keyword)
  "Find note using keyword recursively."
  (interactive
   (list (completing-read "Note: "
                          (directory-files-recursively denote-directory "."))))
  (find-file keyword))
(global-set-key (kbd "C-c nc") 'my-consult-note)

(provide 'init-note)
;;; init-note.el ends here
