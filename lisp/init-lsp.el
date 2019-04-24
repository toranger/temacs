(require-package 'lsp-mode)
;; it use the projectile to guess the root

(setq lsp-auto-guess-root t)    
(setq lsp-clients-clangd-executable "/usr/local/bin/ccls")

;; when auto hook the cpp mode the gtags analyis this to lsp--xref-backend to true
;; (add-hook 'c++-mode-hook #'lsp)

(provide 'init-lsp)
