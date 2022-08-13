;;; init-note --- summary
;;; Commentary:
;;; Code:
(require-package 'org-roam)
(require 'org-roam)
(org-roam-db-autosync-mode)
(setq org-roam-node-display-template
      (concat "${title:80} "
              (propertize "${tags:80}" 'face 'org-tag)))

(require-package 'org-roam-ui)
(require 'org-roam-ui)
(setq org-roam-ui-sync-theme nil
      org-roam-ui-follow t
      org-roam-ui-update-on-save t
      org-roam-ui-open-on-start nil)
(global-set-key (kbd "C-c oi") 'org-roam-node-insert)
(global-set-key (kbd "C-c of") 'org-roam-node-find)
(global-set-key (kbd "C-c ot") 'org-roam-tag-add)

(require-package 'denote)
(require 'denote)
(setq denote-known-keywords (append denote-known-keywords '("computer-science" "hardware")))
(global-set-key (kbd "C-c dn") 'denote)
(global-set-key (kbd "C-c dl") 'denote-link)
(global-set-key (kbd "C-c db") 'denote-link-backlinks)
(global-set-key (kbd "C-c df") 'denote-link-find-file)

(provide 'init-note)
;;; init-note.el ends here
