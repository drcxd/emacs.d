;;; init-modeline --- summary
;;; Commentary:
;;; Code:

(require-package 'doom-modeline)

(setq doom-modeline-buffer-file-name-style 'buffer-name)
(setq doom-modeline-icon nil)
;; (doom-modeline-mode 1)

(require-package 'mini-modeline)
(defun my-compute-buffer-encoding ()
  "Compute current buffer encoding"
  (let* ((sys (coding-system-plist buffer-file-coding-system))
         (cat (plist-get sys :category))
         (sym (if (memq cat
                        '(coding-category-undecided coding-category-utf-8))
                  'utf-8
                (plist-get sys :name))))
    (upcase (symbol-name sym))
    )
  )
(setq-default mini-modeline-r-format
              (list
               "%e"
               '(:eval (when (and (buffer-modified-p) buffer-file-name) "*"))
               '(:eval (when buffer-read-only "%%"))
               mode-line-buffer-identification " "
               mode-name " "
               mode-line-position " "
               mode-line-misc-info " "
               '(:eval (my-compute-buffer-encoding))
               meow--indicator))
(mini-modeline-mode)

(setq display-time-24hr-format t)
(display-time)
(column-number-mode)

(provide 'init-modeline)
;;; init-modeline.el ends here
