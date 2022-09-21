;;; init-modeline --- summary
;;; Commentary:

;;; Setup mode line. 3 solutions offered:
;;; 1. Doom modeline
;;; 2. native mode line
;;; 3. mini-modeline

;;; Doom modeline is big and slow, taking more screen space, but it
;;; provides more support for many packages and modes.

;;; Native mode line configuration is minimal but fast.

;;; Mini-mode-line has some issues with meow KEYPAD and does not work
;;; in server mode. It also has other minor issues, for example, since
;;; the background color of echo area is differnt than that of mode
;;; line, some symbol becomes difficult to recognize when displayed in
;;; echo area.

;;; Reference:
;;; https://emacs-fu.blogspot.com/2011/08/customizing-mode-line.html

;;; Code:

(require-package 'doom-modeline)

(defvar my-mode-line-solution "doom")
;; (defvar my-mode-line-solution "native")

(setq doom-modeline-height 1)
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

(setq my-mode-line-format
      (list
       "%e"
       mode-line-front-space
       '(:eval (meow-indicator))
       '(:eval (when (and (buffer-modified-p) buffer-file-name) "*"))
       '(:eval (when buffer-read-only "%%"))
       mode-line-buffer-identification " "
       '(:eval mode-name) " "
       mode-line-position " "
       " " mode-line-misc-info " "
       '(:eval (my-compute-buffer-encoding))))

(defun my-set-mode-line ()
  (interactive)
  (setq-default mode-line-format my-mode-line-format)
  (dolist (buf (buffer-list))
    (with-current-buffer buf
      (setq mode-line-format my-mode-line-format))))

(setq-default mini-modeline-r-format my-mode-line-format)
;; (mini-modeline-mode)

(cond ((string= my-mode-line-solution "doom") (doom-modeline-mode))
      ((string= my-mode-line-solution "native") (my-set-mode-line))
      ((string= my-mode-line-solution "mini") (mini-modeline-mode)))

(setq display-time-24hr-format t)
(display-time)
(column-number-mode)

(provide 'init-modeline)
;;; init-modeline.el ends here
