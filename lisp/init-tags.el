;;; https://github.com/dedi/gxref
;;; need emacs25.1 more and the global first
(require-package 'ivy-xref)
(require-package 'gxref)

;;; ivy-xref
(setq xref-show-xrefs-function #'ivy-xref-show-xrefs)


;;; gxref
(add-to-list 'xref-backend-functions 'gxref-xref-backend)
;; the default see the .h file as .c 
;; after set this need to rebuild the db
(setenv "GTAGSFORCECPP" "1")

(provide 'init-tags)
