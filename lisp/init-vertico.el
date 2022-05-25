;;; init-vertico --- summary
;;; Commentary:
;;; Code:
(require-package 'vertico)
(vertico-mode)

(setq read-extended-command-predicate
      #'command-completion-default-include-p)

(setq enable-recursive-minibuffers t)

(provide 'init-vertico)
;;; init-vertico.el ends here
