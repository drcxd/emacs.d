;;; init-lsp --- summary
;;; Commentary:
;;; Code:
(require-package 'lsp-mode)
(require-package 'lsp-ui)
(require-package 'lsp-ivy)

(require 'lsp)
(setq lsp-headerline-breadcrumb-enable nil)

(require 'lsp-clangd)
(setq lsp-clients-clangd-args
      '("--completion-style=detailed"
	"--header-insertion=never"
        "-j=32"))

(require 'lsp-ui-doc)
(setq lsp-ui-doc-show-with-cursor t)

(add-to-list 'safe-local-eval-forms '(lsp))

(provide 'init-lsp)
;;; init-lsp.el ends here
