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
;; (exec-path-from-shell-copy-env "GO111MODULE")
(exec-path-from-shell-copy-env "http_proxy")
(exec-path-from-shell-copy-env "https_proxy")
(exec-path-from-shell-copy-env "no_proxy")
;; Load the java path
(exec-path-from-shell-copy-env "JAVA_HOME")
(exec-path-from-shell-copy-env "JRE_HOME")
(exec-path-from-shell-copy-env "CLASS_PATH")


;; (add-to-list 'load-path "~/.emacs.d/org/lisp/")
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
(require 'init-dumbjump)
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
(require 'init-vterm)







(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("13d20048c12826c7ea636fbe513d6f24c0d43709a761052adbca052708798ce3" "e61752b5a3af12be08e99d076aedadd76052137560b7e684a8be2f8d2958edc3" "585942bb24cab2d4b2f74977ac3ba6ddbd888e3776b9d2f993c5704aa8bb4739" "a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" default)))
 '(package-selected-packages
   (quote
    (moe-theme dumb-jump vterm golint exec-path-from-shell pdf-tools gxref ivy-xref company emamux yasnippet multi-term avy git-gutter window-numbering quelpa projectile magit lsp-mode gruvbox-theme go-mode flycheck evil-surround evil-matchit evil-leader counsel))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
