(load-theme 'monokai t)

(tool-bar-mode -1)

(scroll-bar-mode -1)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(setq inhibit-splash-screen t)

(setq gnus-inhibit-startup-message t)

(setq-default cursor-type 'bar)

(global-linum-mode t)

(electric-indent-mode t)

(column-number-mode t)

(global-hl-line-mode t)

(setq x-underline-at-descent-line t)

(display-time-mode t)  
(setq display-time-24hr-format t)   
(setq display-time-day-and-date t)

(set-default-font "Courier New-16")

(setq user-full-name "dobbin")  
(setq user-mail-address "dobbin.fox@gmail.com")

(setq ring-bell-function 'ignore)

(setq kill-ring-max 200)

(global-font-lock-mode t)

(transient-mark-mode t)

(setq visible-bell nil)

(setq default-tab-width 4)
(setq c-basic-offset 4)

(add-to-list 'auto-mode-alist '("\\.cc\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(global-auto-revert-mode t)

(setq-default require-final-newline t)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; dobbin
					    ("6db" "dobbin")
					    ))

(setq make-backup-files nil)

(setq auto-save-default nil)

(setq x-select-enable-clipboard t)

(setq-default kill-whole-line t)

(setq scroll-step 1  
      scroll-margin 3  
      scroll-conservatively 10000)

(setq default-major-mode 'text-mode)

(global-hl-line-mode t)

(delete-selection-mode t)

(fset 'yes-or-no-p 'y-or-n-p)

(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indented selected region."))
      (progn
	(indent-buffer)
	(message "Indented buffer.")))))

(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

(setq hippie-expand-try-functions-list '(try-expand-dabbrev
					 try-expand-dabbrev-all-buffers
					 try-expand-dabbrev-from-kill
					 try-complete-file-name-partially
					 try-complete-file-name
					 try-expand-all-abbrevs
					 try-expand-list
					 try-expand-line
					 try-complete-lisp-symbol-partially
					 try-complete-lisp-symbol))

(global-set-key (kbd "s-/") 'hippie-expand)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-f") 'find-function-on-key)

(provide 'init-base)

