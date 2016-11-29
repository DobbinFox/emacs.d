(setq user-full-name "dobbin")  
(setq user-mail-address "dobbin.fox@gmail.com")

(setq ring-bell-function 'ignore)

(setq visible-bell nil)

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

;;(require 'dired-x)
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)
(setq dired-dwim-target t)
(put 'dired-find-alternate-file 'disable nil)

(provide 'init-better-defaults)

