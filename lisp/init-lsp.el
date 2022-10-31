;;; init-lsp --- summary
;;; Commentary:
;;; Code:
(require-package 'lsp-mode)
(require-package 'lsp-ui)
;; (require-package 'lsp-ivy)

(with-eval-after-load 'lsp-mode
  (setq lsp-headerline-breadcrumb-enable nil)
  (define-key lsp-mode-map (kbd "C-c lc") 'lsp-find-declaration)
  (define-key lsp-mode-map (kbd "C-c lf") 'lsp-find-definition)
  (define-key lsp-mode-map (kbd "C-c lo") 'lsp-clangd-find-other-file)
  (define-key lsp-mode-map (kbd "C-c lr") 'lsp-workspace-restart)
  (define-key lsp-mode-map (kbd "C-c ld") 'lsp-workspace-shutdown)
  (define-key lsp-mode-map (kbd "C-c la") 'lsp-execute-code-action)
  (define-key lsp-mode-map (kbd "C-c ln") 'lsp-rename)
  (define-key lsp-mode-map (kbd "C-c lg") 'lsp-ui-doc-glance)
  (define-key lsp-mode-map (kbd "C-c lt") 'lsp-semantic-tokens-mode)
  )

(with-eval-after-load 'lsp-ui
  ;; Fix lsp-ui-sideline font scaling issue
  ;; See https://github.com/emacs-lsp/lsp-ui/issues/561

  ;;
  ;; 2022-03-28 - fix sideline height computation
  ;;
  (defun lsp-ui-sideline--compute-height nil
    "Return a fixed size for text in sideline."
    (let ((fontHeight (face-attribute 'lsp-ui-sideline-global :height)))
      (if (null text-scale-mode-remapping)
          '(height
            (if (floatp fontHeight) fontHeight
              (/ (face-attribute 'lsp-ui-sideline-global :height) 100.0)
              )
            ;; Readjust height when text-scale-mode is used
            (list 'height
                  (/ 1 (or (plist-get (cdr text-scale-mode-remapping) :height)
                           1)))))))

  ;;
  ;; 2022-03-28 - fix sideline alignment
  ;;
  (defun lsp-ui-sideline--align (&rest lengths)
    "Align sideline string by LENGTHS from the right of the window."
    (list (* (window-font-width nil 'lsp-ui-sideline-global)
             (+ (apply '+ lengths) (if (display-graphic-p) 1 2)))))

  ;; This is necessary for the alignment fix works
  (set-face-attribute 'lsp-ui-sideline-global nil :inherit 'default)
  )

(defun my-syntax-highlighting ()
  "Setup syntax highlighting"
  (lsp-semantic-tokens-mode 1)
  (setq lsp-semantic-tokens-apply-modifiers nil)
  (if (boundp 'tree-sitter-hl-mode)
      (tree-sitter-hl-mode -1)))

(add-hook 'lsp-mode-hook 'my-syntax-highlighting)

;; (global-set-key (kbd "C-c ll") 'lsp)

;; consult-lsp
(require-package 'consult-lsp)
(with-eval-after-load 'lsp-mode
  (define-key lsp-mode-map (kbd "C-c lS") 'consult-lsp-symbols)
  (define-key lsp-mode-map (kbd "C-c ls") 'consult-lsp-file-symbols)
  (define-key lsp-mode-map (kbd "C-c li") 'consult-lsp-diagnostics)
  )

(with-eval-after-load 'lsp-clangd
  (setq lsp-clients-clangd-args
      '("--completion-style=detailed"
	"--header-insertion=never"
        "--function-arg-placeholders=0"
        "-j=32")))

(add-to-list 'safe-local-eval-forms '(lsp))

(provide 'init-lsp)
;;; init-lsp.el ends here
