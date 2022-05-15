;;; init-org --- summary
;;; Commentary:
;;; Code:
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
  (setq org-todo-keywords
	(quote
	 ((sequence "TODO(t)" "STARTED(s!)" "|" "DONE(d!/!)")
	  (sequence "WAITING(w@/!)" "SOMEDAY(S)" "PROJECT(P@)" "|" "CANCELLED(c@/!)"))))
  (setcar (nthcdr 4 org-emphasis-regexp-components) 5)
  (org-set-emph-re 'org-emphasis-regexp-components org-emphasis-regexp-components)
  )

(provide 'init-org)
;;; init-org.el ends here
