(require-package 'ivy)
(ivy-mode t)
(counsel-mode t)

(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; swiper
(global-set-key "\C-s" 'swiper)

;; no ^
;; (setq ivy-initial-inputs-alist nil)
;; M-x
;; when use the ivy counsel-M-x which is find-file to create file
;; ma when already have the main file can use C-M-j.
(global-set-key (kbd "M-x") 'counsel-M-x)



(provide 'init-ivy)
