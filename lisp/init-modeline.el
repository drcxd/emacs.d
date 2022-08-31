;;; init-modeline --- summary
;;; Commentary:
;;; Code:

(require-package 'doom-modeline)

(setq doom-modeline-buffer-file-name-style 'buffer-name)
(setq doom-modeline-icon nil)
(doom-modeline-mode 1)

(setq display-time-24hr-format t)
(display-time)
(column-number-mode)

(provide 'init-modeline)
;;; init-modeline.el ends here
