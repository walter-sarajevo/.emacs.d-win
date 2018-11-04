(provide 'globle-operation)
;; windows-operations

;;  split window
(global-set-key (kbd "M-2") 'split-window-right)
(global-set-key (kbd "M-3") 'split-window-below)
(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "C-c M-0") 'kill-buffer-and-window)

;;  transform
(global-set-key [(f11)] 'loop-alpha)

;; super zhushi
(global-set-key (kbd "M-;") 'qiang-comment-dwim-line)

;; ace-jump
(global-set-key (kbd "C-c C-SPC") 'ace-jump-mode)

;; switch-window
(global-set-key (kbd "M-o") 'switch-window)

;; ac-complete
;; (ac-set-trigger-key "M-TAB")  
;; ;; (define-key ac-mode-map  [(control tab)] 'auto-complete)  
;; (define-key ac-mode-map  (kbd "C-TAB") 'auto-complete)  
;; (apply-define-key ac-mode-map
;;    `(("<return>"   nil)
;;      ("RET"        nil)
;;      ("M-j"        ac-complete)
;;      ("<C-return>" ac-complete)
;;      ("M-n"        ac-next)
;;      ("M-p"        ac-previous)))

(provide 'globle-operations)
