(require 'cl) 

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;;  (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
  )

(defvar dobbin/packages '(
			  company
			  solarized-theme
			  monokai-theme
			  hungry-delete
			  smex
			  ivy
			  counsel
			  swiper
			  find-file-in-project
			  ;;exec-path-from-shell
			  smartparens
			  popwin
			 ) "Default packages"
  )

(defun dobbin/packages-installed-p()
  (loop for pkg in dobbin/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)
	)
  )

(unless (dobbin/packages-installed-p)
  (message "%s" "Refeshing package database...")
  (package-refresh-contents)
  (dolist (pkg dobbin/packages)
    (when (not (package-installed-p pkg)))
    (package-install pkg)
    )
  )


(require 'hungry-delete)
(global-hungry-delete-mode)

(require 'smartparens-config)
(smartparens-global-mode t)

(require 'org)
(setq org-src-fnotify-natively t)
(setq org-agenda-files '("~/org"))


(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)

(global-hl-line-mode t)

(load-theme 'monokai t)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(require 'smex)
(smex-initialize)

(require 'popwin)
(popwin-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

(global-company-mode t)

(provide 'init-packages)

