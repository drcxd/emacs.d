;;; init-tree-sitter --- summary
;;; Commentary:
;;; Code:
(require-package 'tree-sitter)
(require-package 'tree-sitter-langs)

(add-hook 'c-mode-hook #'tree-sitter-mode)
(add-hook 'c++-mode-hook #'tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

(provide 'init-tree-sitter)
;;; init-tree-sitter.el ends here
