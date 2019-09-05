(require-package 'magit)
;; (require-package 'git-gutter)
;; the git and svn
(setq git-gutter:handled-backends '(git svn))
;; (global-git-gutter-mode +1) normal
(add-hook 'find-file-hook
          (lambda ()
            (when (<= (line-number-at-pos (point-max)) 1500)
              (git-gutter-mode))))




(provide 'init-magit)
