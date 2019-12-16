;; init-package.el
(require 'package)

(setq package-archives '(
			 ;; offline ---------------
                         ;; ("melpa" . "~/.emacs.d/localelpa/")
			 ;; offline git -----------
                         ;; ("mygelpa" . "https://raw.githubusercontent.com/toranger/myelpa/master")
			 ;; china org -------------
                         ("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")
                         ;; ("melpa-stable" . "http://elpa.emacs-china.org/melpa-stable/")
                         ;; ("org" . "http://elpa.emacs-china.org/org/")

			 ;; ("gnu"   . "http://mirrors.cloud.tencent.com/elpa/gnu/")
			 ;; ("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")

                         ))


;; require-package
(setq core/package-install-mode 'melpa)

(defun require-package (package &optional no-refresh)
  "Install given PACKAGE. "
  (if (package-installed-p package)
      t
    (if (eq core/package-install-mode 'source)
          (quelpa package)
      (if (or (assoc package package-archive-contents)
              no-refresh)
          (package-install package)
        (progn
          (package-refresh-contents)
          (require-package package t))))))

(package-initialize)

;; quelpa
;; notice can install quelpa by source behind the require-package instead of using elpa-mirror
(require-package 'quelpa)
(setq quelpa-update-melpa-p nil)

;; elpa-mirror
;; https://github.com/redguardtoo/elpa-mirror
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'load-path "/home/alantong/downloads/emacs-libvterm")

(require 'elpa-mirror)
(setq elpamr-default-output-directory "~/.emacs.d/localelpa")

(provide 'init-package)
