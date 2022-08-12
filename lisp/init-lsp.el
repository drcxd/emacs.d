;;; init-lsp --- summary
;;; Commentary:
;;; Code:
(require-package 'lsp-mode)
(require-package 'lsp-ui)
;; (require-package 'lsp-ivy)

(require 'lsp)
(require 'lsp-mode)
(setq lsp-headerline-breadcrumb-enable nil)
(define-key lsp-mode-map (kbd "C-c lc") 'lsp-find-declaration)
(define-key lsp-mode-map (kbd "C-c lf") 'lsp-find-definition)
(define-key lsp-mode-map (kbd "C-c lo") 'lsp-clangd-find-other-file)
(define-key lsp-mode-map (kbd "C-c lr") 'lsp-workspace-restart)
(define-key lsp-mode-map (kbd "C-c ld") 'lsp-workspace-shutdown)
(define-key lsp-mode-map (kbd "C-c la") 'lsp-execute-code-action)
(define-key lsp-mode-map (kbd "C-c ln") 'lsp-rename)
(define-key lsp-mode-map (kbd "C-c lg") 'lsp-ui-doc-glance)

;; consult-lsp
(require-package 'consult-lsp)
(define-key lsp-mode-map (kbd "C-c ls") 'consult-lsp-symbols)
(define-key lsp-mode-map (kbd "C-c li") 'consult-lsp-diagnostics)

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
