  (add-to-list 'package-archives
              '("melpa" . "http://melpa.org/packages/"))
(set-default-font "-outline-Axure Handwriting-bold-normal-normal-sans-21-*-*-*-p-*-iso8859-1")
(define-key global-map [C-return] 'set-mark-command)
;;neotree begin
(add-to-list 'load-path "~/.emacs.d/elpa/neotree-20170522.758")
;;Every time when the neotree window is opened, let it find current file and jump to node.
(setq neo-smart-open t)
;;When running ‘projectile-switch-project’ (C-c p p), ‘neotree’ will change root automatically.
 (setq projectile-switch-project-action 'neotree-projectile-action)
(global-set-key [f8] 'neotree-toggle)
;;neotree end
  ;;(send-mail-function (quote smtpmail-send-it))
 ;; (smtp mail-smtp-server "smtp.qq.com")
 ;; (smtp mail-smtp-service 25)
  (setq user-full-name "前人种树")
 (setq user-mail-address "2694149918@qq.com")
 (setq-default tab-width 4)
 (setq-default indent-tabs-mode)
 
;;(put 'upcase-region 'disabled nil)
(set-default-font "-outline-Axure Handwriting-bold-normal-normal-sans-21-*-*-*-p-*-iso8859-1")
      (define-key global-map [C-return] 'set-mark-command)
 	  ;; jdee-mode
 (add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")  
 (load "jde")
 ;; php-mode
  (autoload 'php-mode "php-mode" "PHP editing mode." t)
  (setq auto-mode-alist (cons '("\\.php$" . php-mode) auto-mode-alist))
  (load-theme 'leuven t)
