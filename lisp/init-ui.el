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

(load-theme 'monokai t)

(provide 'init-ui)

