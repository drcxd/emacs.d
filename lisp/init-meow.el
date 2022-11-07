;;; init-meow --- summary
;;; Commentary:
;;; Code:
(require-package 'meow)

(defun meow-setup ()
  (setq meow-cheatsheet-layout meow-cheatsheet-layout-qwerty)
  (meow-motion-overwrite-define-key
   ;; '("j" . meow-next)
   ;; '("k" . meow-prev)
   '("<escape>" . ignore))
  (meow-leader-define-key
   ;; SPC j/k will run the original command in MOTION state.
   ;; '("j" . "H-j")
   ;; '("k" . "H-k")
   ;; Use SPC (0-9) for digit arguments.
   '("1" . meow-digit-argument)
   '("2" . meow-digit-argument)
   '("3" . meow-digit-argument)
   '("4" . meow-digit-argument)
   '("5" . meow-digit-argument)
   '("6" . meow-digit-argument)
   '("7" . meow-digit-argument)
   '("8" . meow-digit-argument)
   '("9" . meow-digit-argument)
   '("0" . meow-digit-argument)
   '("/" . meow-keypad-describe-key)
   '("?" . meow-cheatsheet))
  (meow-normal-define-key
   '("0" . meow-expand-0)
   '("9" . meow-expand-9)
   '("8" . meow-expand-8)
   '("7" . meow-expand-7)
   '("6" . meow-expand-6)
   '("5" . meow-expand-5)
   '("4" . meow-expand-4)
   '("3" . meow-expand-3)
   '("2" . meow-expand-2)
   '("1" . meow-expand-1)
   '("-" . negative-argument)
   '(";" . meow-reverse)
   '("," . meow-inner-of-thing)
   '("." . meow-bounds-of-thing)
   '("[" . meow-beginning-of-thing)
   '("]" . meow-end-of-thing)
   '("a" . meow-append)
   '("A" . meow-open-below)
   '("b" . meow-back-word)
   '("B" . meow-back-symbol)
   '("c" . meow-change)
   '("d" . meow-delete)
   '("D" . meow-backward-delete)
   '("e" . meow-next-word)
   '("E" . meow-next-symbol)
   '("f" . meow-find)
   '("g" . meow-cancel-selection)
   '("G" . meow-grab)
   '("h" . meow-left)
   '("H" . meow-left-expand)
   '("i" . meow-insert)
   '("I" . meow-open-above)
   '("j" . meow-next)
   '("J" . meow-next-expand)
   '("k" . meow-prev)
   '("K" . meow-prev-expand)
   '("l" . meow-right)
   '("L" . meow-right-expand)
   '("m" . meow-join)
   '("n" . meow-search)
   '("o" . meow-block)
   '("O" . meow-to-block)
   '("p" . meow-yank)
   '("P" . meow-yank-pop)
   ;; '("q" . meow-quit)
   ;; '("Q" . meow-goto-line)
   '("q" . evilnc-comment-or-uncomment-lines)
   '("Q" . evilnc-copy-and-comment-lines)
   '("r" . meow-replace)
   '("R" . meow-swap-grab)
   '("s" . meow-kill)
   '("t" . meow-till)
   '("u" . meow-undo)
   '("U" . meow-undo-in-selection)
   '("v" . meow-visit)
   '("w" . meow-mark-word)
   '("W" . meow-mark-symbol)
   '("x" . meow-line)
   '("X" . meow-goto-line)
   '("y" . meow-save)
   '("Y" . meow-sync-grab)
   '("z" . meow-pop-selection)
   '("'" . repeat)
   '("<escape>" . ignore)
   '("=" . indent-region)
   '("`" . delete-horizontal-space)
   '("{" . backward-paragraph)
   '("}" . forward-paragraph)
   '("/" . hs-toggle-hiding)))

(require 'meow)
(meow-setup)
(meow-global-mode 1)

(global-set-key (kbd "C-.") 'meow-keypad)

(defvar my-lsp-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "l") 'lsp)
    (define-key map (kbd "c") 'lsp-find-declaration)
    (define-key map (kbd "f") 'lsp-find-definition)
    (define-key map (kbd "o") 'lsp-clangd-find-other-file)
    (define-key map (kbd "r") 'lsp-workspace-restart)
    (define-key map (kbd "d") 'lsp-workspace-shutdown)
    (define-key map (kbd "a") 'lsp-execute-code-action)
    (define-key map (kbd "n") 'lsp-rename)
    (define-key map (kbd "g") 'lsp-ui-doc-glance)
    (define-key map (kbd "S") 'consult-lsp-symbols)
    (define-key map (kbd "s") 'consult-lsp-file-symbols)
    (define-key map (kbd "i") 'consult-lsp-diagnostics)
    (define-key map (kbd "t") 'lsp-semantic-tokens-mode)
    map)
  "My LSP map")
(meow-leader-define-key
 (cons "l" my-lsp-map))

(setq meow-mode-state-list
      '((diff-mode . motion)
        (ediff-mode . motion)
        (help-mode . motion)
        (org-roam-mode . motion)
        (json-mode . normal)
        (occur-edit-mode . normal)
        (prog-mode . normal)
        (text-mode . normal)
        (grep-mode . motion)
        (Custom-mode . normal)
        ))

(setq meow-replace-state-name-list
      '((normal . "[N]")
        (motion . "[M]")
        (keypad . "[K]")
        (insert . "[I]")
        (beacon . "[B]")))

(provide 'init-meow)
;;; init-meow.el ends here
