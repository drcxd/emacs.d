;;; init-org --- summary
;;; Commentary:
;;; Code:

(require-package 'org-modern)

;; org Chinese
(defadvice org-html-paragraph (before org-html-paragraph-advice
				      (paragraph contents info) activate)
  "Join consecutive Chinese lines into a single long line without
   unwanted space when exporting org-mode to html."
  (let* ((origin-contents (ad-get-arg 1))
	 (fix-regexp "[[:multibyte:]]")
	 (fixed-contents
	  (replace-regexp-in-string
	   (concat
	    "\\(" fix-regexp "\\) *\n *\\(" fix-regexp "\\)") "\\1\\2" origin-contents)))
    (ad-set-arg 1 fixed-contents)))

(with-eval-after-load 'org
  (setcar (nthcdr 4 org-emphasis-regexp-components) 5)
  (org-set-emph-re 'org-emphasis-regexp-components org-emphasis-regexp-components)
  (setq org-ellipsis "⤵"
        org-auto-align-tags nil
        org-tags-column 0
        org-catch-invisible-edits 'show-and-error
        org-special-ctrl-a/e t
        org-insert-heading-respect-content t
        org-hide-emphasis-markers t
        org-pretty-entities t)
  (global-org-modern-mode)
  )

(provide 'init-org)
;;; init-org.el ends here
