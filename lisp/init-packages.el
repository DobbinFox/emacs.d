(require 'cl) 

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  ;;  (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
  )

(defvar dobbin/packages '(
						  company
						  ;;solarized-theme
						  monokai-theme
						  ;;hungry-delete
						  smex
						  ivy
						  counsel
						  swiper
						  find-file-in-project
						  w3m
						  web-mode
						  magit
						  ;;exec-path-from-shell
						  smartparens
						  window-numbering
						  popwin
						  ) "Default packages"
							)

(defun dobbin/packages-installed-p()
  (loop for pkg in dobbin/packages
		when (not (package-installed-p pkg)) do (return nil)
		finally (return t)
		))

(unless (dobbin/packages-installed-p)
  (message "%s" "Refeshing package database...")
  (package-refresh-contents)
  (dolist (pkg dobbin/packages)
    (when (not (package-installed-p pkg)))
    (package-install pkg)
    ))

(provide 'init-packages)

