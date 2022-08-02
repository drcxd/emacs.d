;;; init-consult --- summary
;;; Commentary:
;;; Code:
(require-package 'consult)
(setq xref-show-xrefs-function #'consult-xref
      xref-show-definitions-function #'consult-xref)

(if (eq system-type 'ms-dos)
    (add-to-list 'process-coding-system-alist
                 '("[rR][gG]" . (utf-8 . gbk-dos))))

(provide 'init-consult)
;;; init-consult.el ends here
