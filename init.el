;; init.el

;; add the son folder
(add-to-list
    'load-path 
    (expand-file-name "lisp" user-emacs-directory))

;; require plugins
(require 'init-package)
(require 'init-vim)
(require 'init-keybind)
(require 'init-auto-check)
(require 'init-lsp)
(require 'init-window)
(require 'init-normal)
(require 'init-ivy)
(require 'init-projectile)
(require 'init-go)
(require 'init-magit)
(require 'init-avy)
(require 'init-shell)
(require 'init-shell-header-mode)
(require 'init-template)
(require 'init-tmux)
(require 'init-complete)
(require 'init-tags)
(require 'init-pdf)







(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (pdf-tools ivy-xref gxref git-gutter emamux yasnippet avy multi-term magit go-mode projectile lsp-mode gruvbox-theme counsel ivy window-numbering flycheck evil-matchit quelpa evil-surround evil-leader))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
