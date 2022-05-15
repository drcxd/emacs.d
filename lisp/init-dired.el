;;; init-dired --- summary
;;; Commentary:
;;; Code:
(setq dired-kill-when-opening-new-dired-buffer t)
(defun dired-mode-setup ()
  "Setup dired."
  (dired-hide-details-mode 1))
(add-hook 'dired-mode-hook 'dired-mode-setup)
(with-eval-after-load 'dired
  (require 'dired-x))
(provide 'init-dired)
;;; init-dired.el ends here
