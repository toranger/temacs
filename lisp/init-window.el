;;
(require-package 'window-numbering)
(window-numbering-mode 1)
(setq window-numbering-assign-func
            (lambda () (when (equal (buffer-name) "*Calculator*") 9)))


;; them
(load-theme 'gruvbox-dark-medium t)
;; (enable-theme 'gruvbox-dark-medium)



(provide 'init-window)
