;;  super zhushi
(defun qiang-comment-dwim-line (&optional arg)
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
     (comment-dwim arg)))


;; super delete
(defadvice kill-ring-save (before slickcopy activate compile)  
   (interactive  
    (if mark-active (list (region-beginning) (region-end))  
      (list (line-beginning-position)  
            (line-beginning-position 2)))))  
 (defadvice kill-region (before slickcut activate compile)  
   (interactive  
    (if mark-active (list (region-beginning) (region-end))  
      (list (line-beginning-position)  
            (line-beginning-position 2)))))

;; transparent
(setq alpha-list '((100 100) (85 60) (65 35)))
(defun loop-alpha ()  (interactive)
  (let ((h (car alpha-list)))                ;; head value will set to
    ((lambda (a ab)
       (set-frame-parameter (selected-frame) 'alpha (list a ab))
       (add-to-list 'default-frame-alist (cons 'alpha (list a ab)))
       ) (car h) (car (cdr h)))
    (setq alpha-list (cdr (append alpha-list (list h))))
    )
)


(provide 'fast-op)
