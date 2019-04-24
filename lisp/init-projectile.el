(require-package 'projectile)

(setq projectile-completion-system 'ivy)
(setq projectile-use-native-indexing t)

(setq projectile-track-known-projects-automatically nil)
;;; ignore
(setq projectile-globally-ignored-directories
      '(".git"
        ".ccls-cache"
        ".svn"
        ".stack-work"
        ".cquery_cached_index"))

(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)




(provide 'init-projectile)
