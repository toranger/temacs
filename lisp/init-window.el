;;
(require-package 'window-numbering)
(window-numbering-mode 1)
(setq window-numbering-assign-func
            (lambda () (when (equal (buffer-name) "*Calculator*") 9)))


;; them
;; must set export TERM=xterm-256color before
(require-package 'gruvbox-theme)
(load-theme 'gruvbox-dark-medium t)
;; (enable-theme 'gruvbox-dark-medium)



(provide 'init-window)
