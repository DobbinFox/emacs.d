(require 'helm)
(require 'helm-config)

(helm-mode 1)


(global-set-key (kbd "M-x") 'helm-M-x)

(global-set-key (kbd "C-x C-f") 'helm-find-files)

(global-set-key (kbd "C-x b") 'helm-buffers-list)

(provide 'init-helm)
