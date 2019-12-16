;; message
(require-package 'dumb-jump)
(dumb-jump-mode 1)
(setq dumb-jump-selector 'ivy)
(setq dumb-jump-force-searcher 'rg)

(autoload 'dumb-jump-go "dumb-jump" "jump to definition" t)
;; (setq dumb-jump-default-project "~/gospec/src/git.code.oa.com/All-In-OneNAS/ofs/")



(defun dumb-jump-get-project-root (filepath)
  "(Modify) Keep looking at the parent dir of FILEPATH until a denoter file/dir is found."
  (s-chop-suffix
   "/"
   (f-expand
    (or
     ;; my add
     (projectile-project-root filepath)
     dumb-jump-project
     (locate-dominating-file filepath #'dumb-jump-get-config)
          dumb-jump-default-project))))

(provide 'init-dumbjump)
