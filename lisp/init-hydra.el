;;; init-hydra --- summary
;;; Commentary:
;;; Code:
(require-package 'hydra)
(require 'hydra)

(defhydra hydra-navigation ()
  "hydra-navigation"
  ("j" next-line "next-line")
  ("k" previous-line "previous-line")
  ("f" scroll-up-command "page-down")
  ("b" scroll-down-command "page-up")
  ("q" nil "quit"))

(defhydra hydra-window-adjust ()
  "hydra-window-adjust"
  ("k" enlarge-window "enlarge-window")
  ("l" enlarge-window-horizontally "enlarge-window-horizontally")
  ("j" shrink-window "shrink-window")
  ("h" shrink-window-horizontally "shrink-window-horizontally")
  ("q" nil "quit")
  )

(provide 'init-hydra)
;;; init-hydra.el ends here
