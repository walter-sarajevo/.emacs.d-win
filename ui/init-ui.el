(provide 'init-ui)

;; English Font
(set-face-attribute
  'default nil :font "Consolas 15");;英文字
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset
                      (font-spec :family "微软雅黑" :size 40)));;中文字体


;;透明透明透明透明透明透明透明透明透明透明透明
;;jijijijijijijijijijijijijijijijijijijiji
;;set transparent effect
(set-frame-parameter (selected-frame) 'alpha (list 85 60))

(add-to-list 'default-frame-alist (cons 'alpha (list 85 60)))

;; backup 
(setq backup-directory-alist (quote (("." . "~/.backups"))))
(setq version-control t)
(setq kept-old-versions 2)
(setq kept-new-versions 5)
(setq delete-old-versions t)
(setq backup-directory-alist '(("." . "~/.backups")))
(setq backup-by-copying t)

;; true full screen
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;;显示行号

(require 'linum)
(global-linum-mode t)

;显示列号 
(column-number-mode t)

;; 一打开就起用 text 模式。
(setq default-major-mode 'text-mode)

;; 语法高亮
(global-font-lock-mode t)

;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; 显示括号匹配
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; keep cursor at the end of line
(setq track-eol t)

;; disable beep
(setq visible-bell t)

(setq package-archives
  
    '(("melpa" . "https://elpa.emacs-china.org/melpa")
     ("gnu" . "http://elpa.gnu.org/packages/")))

;; auto-fill 
(toggle-truncate-lines t)

;; 主题及主题文件位置
(add-to-list 'custom-theme-load-path "~/.emacs.d/ui/theme")
(load-theme 'molokai t)

(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

(require 'fast-op)


