;;; init-note --- summary
;;; Commentary:
;;; Code:
(require-package 'org-roam)
(require 'org-roam)
(org-roam-db-autosync-mode)
(setq org-roam-node-display-template
      (concat "${title:80} "
              (propertize "${tags:*}" 'face 'org-tag)))

(require-package 'org-roam-ui)
(require 'org-roam-ui)
(setq org-roam-ui-sync-theme nil
      org-roam-ui-follow t
      org-roam-ui-update-on-save t
      org-roam-ui-open-on-start nil)
(global-set-key (kbd "C-c ni") 'org-roam-node-insert)
(global-set-key (kbd "C-c nf") 'org-roam-node-find)
(global-set-key (kbd "C-c nt") 'org-roam-tag-add)
(global-set-key (kbd "C-c nr") 'org-roam-tag-remove)

(require-package 'denote)
(require 'denote)
(setq denote-known-keywords (append denote-known-keywords '("computer-science" "hardware")))
(global-set-key (kbd "C-c nd") 'denote)
(global-set-key (kbd "C-c nl") 'denote-link)
(global-set-key (kbd "C-c nb") 'denote-link-backlinks)
(global-set-key (kbd "C-c no") 'denote-link-find-file)

(provide 'init-note)
;;; init-note.el ends here
