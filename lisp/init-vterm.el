(require-package 'vterm)

(evil-set-initial-state 'vterm-mode 'emacs)

(add-hook 'vterm-mode-hook
          (lambda ()
            (core--set-work-state)
            (define-key vterm-mode-map (kbd "C-u") 'vterm--self-insert)
            (local-set-key [escape] 'vterm--self-insert))) 


;; (defalias 'vt 'vterm)

;; (unless (assoc "find-file-other-window" vterm-eval-cmds)
;;   (add-to-list 'vterm-eval-cmds
;;                              '("find-file-other-window" find-file-other-window)))


(provide 'init-vterm)
