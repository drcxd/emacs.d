;;; init-linum-mode --- summary
;;; Commentary:
;;; Code:
(defvar my-linum-inhibit-modes
  '(eshell-mode
    shell-mode
    ;; js-comint-mode
    ;; profiler-report-mode
    ;; ffip-diff-mode
    ;; dictionary-mode
    ;; erc-mode
    dired-mode
    help-mode
    text-mode
    fundamental-mode
    ;; jabber-roster-mode
    ;; jabber-chat-mode
    ;; inferior-js-mode
    ;; inferior-python-mode
    ivy-occur-grep-mode ; better performance
    ivy-occur-mode ; better performance
    ;; twittering-mode
    compilation-mode
    ;; weibo-timeline-mode
    woman-mode
    Info-mode
    calc-mode
    calc-trail-mode
    ;; comint-mode
    ;; gnus-group-mode
    ;; gud-mode
    org-mode
    vc-git-log-edit-mode
    log-edit-mode
    term-mode
    ;; w3m-mode
    speedbar-mode
    gnus-summary-mode
    gnus-article-mode
    calendar-mode)
  "Major modes without line number.")

(defun display-line-numbers-mode-hook-setup ()
  (setq display-line-numbers (not (memq major-mode my-linum-inhibit-modes))))

(add-hook 'display-line-numbers-mode-hook 'display-line-numbers-mode-hook-setup)

(global-display-line-numbers-mode)

(provide 'init-linum-mode)
;;; init-linum-mode.el ends here
