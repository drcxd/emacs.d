;;; init-elpa.el --- Settings and helpers for package.el -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'package)
(require 'cl-lib)

;;; Standard package repositories
(setq package-archives
      '(
        ;; uncomment below line if you need use GNU ELPA
        ;; ("gnu" . "https://elpa.gnu.org/packages/")
        ;; ("melpa" . "https://melpa.org/packages/")
        ;; ("melpa-stable" . "https://stable.melpa.org/packages/")
        ;; ("nongnu" . "https://elpa.nongnu.org/nongnu/")

        ;; use local repository
	;; ("local-melpa" . "~/elpa-mirror-master/melpa/")
        ;; ("local-gnu" . "~/elpa-mirror-master/gnu/")

        ;; Use either 163 or tsinghua mirror repository when official melpa
        ;; is slow or shutdown.

        ;; ;; {{ Option 1: 163 mirror repository:
        ("gnu" . "https://mirrors.163.com/elpa/gnu/")
        ("melpa" . "https://mirrors.163.com/elpa/melpa/")
        ;; ("melpa-stable" . "https://mirrors.163.com/elpa/stable-melpa/")
        ("nongnu" . "https://mirrors.163.com/elpa/nongnu/")
        ;; ;; }}

        ;; ;; {{ Option 2: tsinghua mirror repository
        ;; ;; @see https://mirror.tuna.tsinghua.edu.cn/help/elpa/ on usage:
        ;; ;; ("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ;; ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        ;; ("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/stable-melpa/")
        ;; }}

        ;; gitlab mirror
        ;; ("melpa" . "https://gitlab.com/d12frosted/elpa-mirror/raw/master/melpa/")
        ;; ("org"   . "https://gitlab.com/d12frosted/elpa-mirror/raw/master/org/")
        ;; ("gnu"   . "https://gitlab.com/d12frosted/elpa-mirror/raw/master/gnu/")
        ))
(package-initialize)
;;; On-demand installation of packages

(defun require-package (package &optional min-version no-refresh)
  "Ask elpa to install given PACKAGE with MIN-VERSION.
If NO-REFRESH is nil, `package-refresh-contents' is called."
  (unless (package-installed-p package min-version)
    (unless (or (assoc package package-archive-contents) no-refresh)
      (package-refresh-contents))
    (package-install package)))

(provide 'init-elpa)
;;; init-elpa.el ends here
