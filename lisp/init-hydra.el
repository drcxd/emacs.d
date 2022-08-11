;;; init-hydra --- summary
;;; Commentary:
;;; Code:
(require-package 'hydra)
(require 'hydra)

(defhydra hydra-org-roam (:exit t)
  "org-roam"
  ("f" org-roam-node-find "node-find")
  ("i" org-roam-node-insert "node-insert")
  ("a" org-roam-tag-add "tag-add")
  ("r" org-roam-tag-remove "tag-remove"))

(defhydra hydra-navigation ()
  "hydra-navigation"
  ("j" evil-next-line "next-line")
  ("k" evil-previous-line "previous-line")
  ("f" evil-scroll-page-down "scroll-page-down")
  ("b" evil-scroll-page-up "scroll-page-up")
  ("q" nil "quit"))

(defhydra hydra-window-adjust ()
  "hydra-window-adjust"
  ("k" enlarge-window "enlarge-window")
  ("l" enlarge-window-horizontally "enlarge-window-horizontally")
  ("j" shrink-window "shrink-window")
  ("h" shrink-window-horizontally "shrink-window-horizontally")
  )

(provide 'init-hydra)
;;; init-hydra.el ends here
