;;; init-timer --- summary
;;; Commentary:
;;; Code:
(require-package 'pomm)
(with-eval-after-load 'pomm
  (pomm-mode-line-mode))
(global-set-key (kbd "C-c tp") 'pomm)

(require-package 'tmr)
(global-set-key (kbd "C-c tT") 'tmr)
(global-set-key (kbd "C-c tt") 'tmr-with-description)
(global-set-key (kbd "C-c tr") 'tmr-remove-finished)
(global-set-key (kbd "C-c tR") 'tmr-remove)
(global-set-key (kbd "C-c tl") 'tmr-tabulated-view)

(provide 'init-timer)
;;; init-timer.el ends here
