;;; init-note --- summary
;;; Commentary:
;;; Code:
(require-package 'org-roam)
(require 'org-roam)
(org-roam-db-autosync-mode)
(setq org-roam-node-display-template
      (concat "${title:*} "
              (propertize "${tags:10}" 'face 'org-tag)))

(require-package 'org-roam-ui)
(require 'org-roam-ui)
(setq org-roam-ui-sync-theme nil
      org-roam-ui-follow t
      org-roam-ui-update-on-save t
      org-roam-ui-open-on-start nil)

(require-package 'denote)
(require 'denote)
(setq denote-known-keywords (append denote-known-keywords '("computer-science" "hardware")))

(provide 'init-note)
;;; init-note.el ends here
