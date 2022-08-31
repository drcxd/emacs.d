;;; init-modeline --- summary
;;; Commentary:
;;; Code:

(require-package 'doom-modeline)

(setq doom-modeline-buffer-file-name-style 'buffer-name)
(setq doom-modeline-icon nil)
(setq display-time-24hr-format t)
(doom-modeline-mode 1)

(display-time)
(column-number-mode)

(provide 'init-modeline)
;;; init-modeline.el ends here
