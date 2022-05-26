;;; init-corfu --- summary
;;; Commentary:
;;; Code:
(require-package 'corfu)
(global-corfu-mode)
(setq corfu-auto t
      corfu-cycle t
      corfu-quit-at-boundary nil
      corfu-quit-no-match t
      corfu-preview-current nil)
(provide 'init-corfu)
;;; init-corfu.el ends here
