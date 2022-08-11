;;; init-hydra --- summary
;;; Commentary:
;;; Code:
(require-package 'hydra)
(defhydra hydra-org-roam ()
  "org-roam"
  ("f" org-roam-node-find "node-find")
  ("i" org-roam-node-insert "node-insert")
  ("a" org-roam-tag-add "tag-add")
  ("r" org-roam-tag-remove "tag-remove"))
(provide 'init-hydra)
;;; init-hydra.el ends here
