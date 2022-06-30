;;; init-corfu-evil --- summary
;;; Commentary:
;;; Code:

(evil-make-overriding-map corfu-map)
(advice-add 'corfu--setup :after 'evil-normalize-keymaps)
(advice-add 'corfu--setup :after 'evil-normalize-keymaps)

(provide 'init-corfu-evil)
;;; init-corfu-evil.el ends here
