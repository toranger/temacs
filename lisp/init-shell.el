(require-package 'multi-term)

;;common config
(defun core--goto-max-with-emacs-state ()
  (interactive)
  (goto-char (point-max))
  (evil-emacs-state))

(defun core--set-work-state ()
  "ESC -> normal state; i/a/s.. -> emacs state"
  ;; the shell-header-mode is in the init-shell-header-mode.el provided by the hongwozai
  ;; use the M-[ and M-] to switch the term
  (shell-header-mode)
  (evil-set-initial-state major-mode 'emacs)
  (dolist (key '("i" "I" "a" "A" "s" "S" "c" "C"))
    (evil-local-set-key
     'normal key 'core--goto-max-with-emacs-state))
  ;; for graphic
  (local-set-key [escape] 'evil-normal-state))

;; solve the color problem
;; tic -o ~/.terminfo /Applications/Emacs.app/Contents/Resources/etc/e/eterm-color.ti
(setq multi-term-program "/bin/bash")

(defalias 'mt 'multi-term)
(autoload 'multi-term-prev "multi-term" nil t)
(autoload 'multi-term-next "multi-term" nil t)
(autoload 'multi-term      "multi-term" nil t)

(add-hook 'term-mode-hook
          (lambda ()
            (setq term-buffer-maximum-size 10000)
            (set (make-local-variable 'term-term-name)
                 "eterm-color")
            ;; compatiable
            (setq-local evil-move-cursor-back nil)
            (setq-local evil-escape-inhibit t)
            ;; term
            (setq multi-term-switch-after-close nil)
            (setq multi-term-dedicated-select-after-open-p t)
            (setq multi-term-scroll-to-bottom-on-output 'others)
            ;; multi-term keybinding
            (term-set-escape-char ?\C-c)
            (setq term-unbind-key-list '("C-x"))
            (setq term-bind-key-alist
                  '(("C-y" . term-paste)
                    ("M-:" . eval-expression)
                    ("<C-backspace>" . term-send-raw-meta)
                    ("M-d" . term-send-forward-kill-word)
                    ("M-x" . execute-extended-command)
                    ("M-]" . shell-header-next)
                    ("M-[" . shell-header-prev)
                    ("M-i" . ivy-switch-buffer)
                    ("M-o" . hydra-window/body)
                    ("TAB" . (lambda () (interactive)
                               (term-send-raw-string "\t")))
                    ("<escape>" . (lambda () (interactive)
                                    (term-send-raw-string "")))))
            (core--set-work-state)))

(provide 'init-shell)
