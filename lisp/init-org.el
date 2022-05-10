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

(provide 'init-org)
;;; init-org.el ends here
