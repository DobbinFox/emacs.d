(require 'cl) 

(when (>= emacs-major-version 24)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;;  (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
  )

(defvar dobbin/packages '(
			  company
			  ;;solarized-theme
			  monokai-theme
			  hungry-delete
			  smex
			  ivy
			  counsel
			  swiper
			  ;;find-file-in-project
			  ;;exec-path-from-shell
			  smartparens
			  ;;reveal-in-osx-finder
			  protobuf-mode
			  window-numbering
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

(setq package-selected-packages dobbin/packages)

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

(require 'smex)
(smex-initialize)

(require 'popwin)
(popwin-mode t)

(require 'ivy)
(ivy-mode t)
(setq ivy-use-virtual-buffers t)

(require 'company)
(global-company-mode t)
(setq company-backends (delete 'company-semantic company-backends))

(require 'protobuf-mode)
(setq auto-mode-alist (cons '(".proto$" . protobuf-mode) auto-mode-alist))

;;(require 'window-numbering)
(window-numbering-mode t)
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))

;;(require 'reveal-in-osx-finder)

(provide 'init-packages)

