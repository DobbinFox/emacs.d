(require 'cl) 

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  ;;  (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
  )

(defvar dobbin/packages '(
						  session
						  company
						  company-c-headers
						  ;;solarized-theme
						  monokai-theme
						  ;;hungry-delete
						  helm
						  ;;color-theme
						  smex
						  ivy
						  counsel
						  swiper
						  ;;flycheck
						  undo-tree
						  redo+
						  find-file-in-project
						  w3m
						  web-mode
						  protobuf-mode
						  dsvn
						  magit
						  yasnippet
						  exec-path-from-shell
						  smartparens
						  window-numbering
						  xcscope
						  popwin
						  ein
						  ecb
						  ;;jedi
						  company-jedi
						  elpy
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

