(provide 'init-addons)

;; ace-jumo-mode
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
   t)

(require 'switch-window)

(require 'ace-jump-buffer)

;;  ac with clang
;;(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
;;(require 'auto-complete-clang)
;;(setq ac-clang-auto-save t)  
;;(setq ac-auto-start t)  
;;(setq ac-quick-help-delay 0.5)  
;;(defun my-ac-config ()  
;;  (setq ac-clang-flags  
;;	(mapcar(lambda (item)(concat "-I" item))  
;;	       (split-string  
;;		"  
 ;;    /usr/include/c++/6  
  ;;   /usr/include/c++/6/x86_64-linux-gnu  
   ;;  /usr/include/c++/6/backward  
   ;;  /usr/local/include  
   ;;  /usr/lib/gcc/x86_64-linux-gnu/6/include  
    ;; /usr/lib/gcc/x86_64-linux-gnu/6/include-fixed  
     ;;/usr/include/x86_64-linux-gnu  
 ;;    /usr/include  
 ;;   ")))  
 ;; (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))  
 ;; (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)  
 ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)  
 ;; (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)  
 ;; (add-hook 'css-mode-hook 'ac-css-mode-setup)  
 ;; (add-hook 'auto-complete-mode-hook 'ac-common-setup)  
;;(global-auto-complete-mode t))  
;;(defun auto-complete-settings ()
 ;; "Settings for `auto-complete'."
  ;; After do this, isearch any string, M-: (match-data) always
  ;; return the list whose elements is integer
 ;; (global-auto-complete-mode 1)
  ;; 不让回车的时候执行`ac-complete', 因为当你输入完一个
  ;; 单词的时候, 很有可能补全菜单还在, 这时候你要回车的话,
  ;; 必须要干掉补全菜单, 很麻烦, 用M-j来执行`ac-complete'
 ;; (apply-define-key
 ;;  ac-complete-mode-map
;;    ("RET"        nil)
 ;;    ("M-j"        ac-complete)
  ;;   ("<C-return>" ac-complete)
  ;;   ("M-n"        ac-next)
  ;;   ("M-p"        ac-previous))) )					
;;(defun my-ac-cc-mode-setup ()  
;;  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))  
;;(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)  
;;ac-source-gtags  
;;(my-ac-config)
      
     ;;;;;;;;;;;;;;;;;;;;;;;company;;;;;;;;;;;;;;;;;;  
(require 'ycmd)  
(require 'company-ycmd)
(require 'flycheck-ycmd)
(add-hook 'after-init-hook #'global-company-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'after-init-hook #'global-ycmd-mode)

(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'company-mode)

(setq ycmd-force-semantic-completion t)
(setq ycmd-global-config t)  
(set-variable 'ycmd-server-command (quote ("python" "d:/emacs/ycmd/ycmd")))  
(set-variable 'ycmd-global-config "d:/emacs/ycmd/.ycm_extra_conf.py")  
;(set-variable 'ycmd-extra-conf-whitelist '("/home/walter/code/daily_report_system/v1.0/*"))
(company-ycmd-setup)  
(flycheck-ycmd-setup)  
(setq company-idle-delay 0)

;;; fcitx
;; (require 'fcitx)
;; (fcitx-aggressive-setup)
;; (setq fcitx-use-dbus t)

;; pyim
(add-to-list 'load-path "~/.emacs.d/addons/pyim")
(add-to-list 'load-path "~/.emacs.d/addons/async")

(require 'pyim)
(require 'pyim-basedict) 
(setq default-input-method "pyim")

  ;; 我使用全拼
(setq pyim-default-scheme 'quanpin)
;; (setq pyim-page-tooltip 'popup)
(setq pyim-page-tooltip 'posframe)
(global-set-key (kbd "C-\\") 'toggle-input-method)
(pyim-isearch-mode 1)
(setq pyim-page-length 5)
;;   (add-hook 'emacs-startup-hook
;;             #'(lambda () (pyim-restart-1 t)))


;;; mc config
(add-to-list 'load-path "~/.emacs.d/addons/mc/")
(require 'multiple-cursors)
