(require 'package)
(package-initialize)

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-init-file)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-packages)

(require 'init-base)

(require 'init-exec)

(require 'init-session)

(require 'init-cedet)

;;(require 'init-ecb)

(require 'init-ffip)

(require 'init-org)

;;(require 'init-smex)

(require 'init-parent)

(require 'init-recentf)

(require 'init-popwin)

(require 'init-dired)

(require 'init-wnum)

(require 'init-swiper)

;;(require 'init-helm)

(require 'init-xcscope)

(require 'init-company)

(require 'init-elpy)

(require 'init-proto)

(require 'init-dsvn)

(require 'init-eshell)

(require 'init-yas)

;;(require 'init-flycheck)

(require 'init-redo)

(require 'init-undotree)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(load-file custom-file)

;;(put 'erase-buffer 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
