;;; init-hydra --- summary
;;; Commentary:
;;; Code:
(require-package 'hydra)
(require 'hydra)

(defhydra hydra-navigation ()
  "hydra-navigation"
  ("j" next-line "next-line")
  ("k" previous-line "previous-line")
  ("u" scroll-up-command "page-down")
  ("i" scroll-down-command "page-up")
  ("m" backward-paragraph "backward-paragraph")
  ("," forward-paragraph "forward-paragraph")
  ("q" nil "quit"))
(global-set-key (kbd "C-c nn") 'hydra-navigation/body)

(defhydra hydra-window-adjust ()
  "hydra-window-adjust"
  ("k" enlarge-window "enlarge-window")
  ("l" enlarge-window-horizontally "enlarge-window-horizontally")
  ("j" shrink-window "shrink-window")
  ("h" shrink-window-horizontally "shrink-window-horizontally")
  ("q" nil "quit")
  )
(global-set-key (kbd "C-c wa") 'hydra-window-adjust/body)

(provide 'init-hydra)
;;; init-hydra.el ends here
