;;; init-modeline --- summary
;;; Commentary:
;;; Code:
(require-package 'doom-modeline)
(setq doom-modeline-buffer-file-name-style 'buffer-name)
(setq doom-modeline-height 20)
(setq doom-modeline-icon nil)
(display-time)
(column-number-mode)
(doom-modeline-mode 1)
(provide 'init-modeline)
;;; init-modeline.el ends here
