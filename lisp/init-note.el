;;; init-note --- summary
;;; Commentary:
;;; Code:
(require-package 'org-roam)
(org-roam-db-autosync-mode)

(require-package 'org-roam-ui)
(setq org-roam-ui-sync-theme t
      org-roam-ui-follow t
      org-roam-ui-update-on-save t
      org-roam-ui-open-on-start t)

(setq org-roam-node-display-template
      (concat "${title:*} "
              (propertize "${tags:10}" 'face 'org-tag)))

(require-package 'denote)
(setq denote-known-keywords (append denote-known-keywords '("computer-science" "hardware")))

(provide 'init-note)
;;; init-note.el ends here
