;;; init-lsp --- summary
;;; Commentary:
;;; Code:
(require-package 'lsp-mode)
(require-package 'lsp-ui)
;; (require-package 'lsp-ivy)

(require 'lsp)
(setq lsp-headerline-breadcrumb-enable nil)

;; consult-lsp
(require-package 'consult-lsp)

(require 'lsp-clangd)
(setq lsp-clients-clangd-args
      '("--completion-style=detailed"
	"--header-insertion=never"
        "--function-arg-placeholders=0"
        "-j=32"))

(require 'lsp-ui-doc)
;; (setq lsp-ui-doc-show-with-cursor nil)

(add-to-list 'safe-local-eval-forms '(lsp))

(provide 'init-lsp)
;;; init-lsp.el ends here
