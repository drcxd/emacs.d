;;; init-note-helper --- summary
;;; Commentary:
;;; Code:
(defun my-consult-note (keyword)
  "Find note using keyword recursively."
  (interactive
   (list (completing-read "Note: "
                          (directory-files-recursively denote-directory "."))))
  (find-file keyword))

(provide 'init-note-helper)
;;; init-note-helper.el ends here
