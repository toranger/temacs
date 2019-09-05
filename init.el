;; init.el

;; add the son folder

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; This sets $MANPATH, $PATH and exec-path from your shell
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
;; Load the golang path
(exec-path-from-shell-copy-env "GOPATH")
(exec-path-from-shell-copy-env "TERM")
(exec-path-from-shell-copy-env "HTTP_PROXY")
(exec-path-from-shell-copy-env "HTTPS_PROXY")
(exec-path-from-shell-copy-env "GO111MODULE")
(exec-path-from-shell-copy-env "http_proxy")
(exec-path-from-shell-copy-env "https_proxy")
(exec-path-from-shell-copy-env "no_proxy")


(add-to-list 'load-path "~/.emacs.d/org/lisp/")
(add-to-list
    'load-path 
    (expand-file-name "lisp" user-emacs-directory))


(setq scheme-program-name "guile") 
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
 '(ansi-color-names-vector
   ["#3c3836" "#fb4933" "#b8bb26" "#fabd2f" "#83a598" "#d3869b" "#8ec07c" "#ebdbb2"])
 '(custom-safe-themes
   (quote
    ("1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" "8f97d5ec8a774485296e366fdde6ff5589cf9e319a584b845b6f7fa788c9fa9a" default)))
 '(package-selected-packages
   (quote
    (ox-gfm exec-path-from-shell restclient pdf-tools ivy-xref gxref git-gutter emamux yasnippet avy multi-term magit go-mode projectile lsp-mode gruvbox-theme counsel ivy window-numbering flycheck evil-matchit quelpa evil-surround evil-leader)))
 '(pdf-view-midnight-colors (quote ("#fdf4c1" . "#282828"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
