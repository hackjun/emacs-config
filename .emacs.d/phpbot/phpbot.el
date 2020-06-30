;; phpbot.el
;; Copyright (c) 2020, mll <coleflowersma at gmail dot com>
;; All rights reserved.
;;
;; https://github.com/thinkcn/phpbot.el
;;

(require 'popup)

(defcustom phpbot-bin-path nil
  "The path of the PHPBot executable."
  :group 'phpbot-data
  :type 'string)

(defun phpbot-hello ()
  "写入Copyright"
  (interactive)
  (insert "Hello world!"))

(defun phpbot-gettersetter ()
  "生成当前类的Getter Setter"
  (interactive)
  (message "Getter Setter") 

  ; shell-command仅执行
  (insert (shell-command-to-string
    (concat phpbot-bin-path " \""
      (buffer-file-name)
      "\" -gs"))))

(defun phpbot-setter ()
  "生成当前Class的Setter"
  (interactive)
  (message "Setter") 

  ; shell-command仅执行
  (insert (shell-command-to-string
    (concat phpbot-bin-path " \""
      (buffer-file-name)
      "\" -s"))))

(defun phpbot-getter ()
  "生成当前Class的Getter"
  (interactive)
  (message "Getter") 

  ; shell-command仅执行
  (insert (shell-command-to-string
    (concat phpbot-bin-path " \""
      (buffer-file-name)
      "\" -g"))))

(defun php-ger-menu (n)
  "处理菜单项"
  (interactive)
  (cond ((= n 1) (phpbot-hello))
    ((= n 2) (phpbot-getter))
    ((= n 3) (phpbot-setter))
    ((= n 4) (phpbot-gettersetter))
    )
  (message n))

(defun php-generator-menu ()
  "弹出 Getter&Setter的操作菜单"
   (interactive)
 
   (php-ger-menu 
    (popup-menu* (list 
                    ;(popup-make-item "Copyright" :value 1)
                    (popup-make-item "Getter" :value 2)
                    (popup-make-item "Setter" :value 3)
                    (popup-make-item "Getter & Setter" :value 4)) :nowait)) 
)



(provide 'phpbot)