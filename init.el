(require 'package)
(add-to-list 'package-archives
              '("melpa" . "http://melpa.org/packages/"))
(set-default-font "-outline-Axure Handwriting-bold-normal-normal-sans-21-*-*-*-p-*-iso8859-1")
(define-key global-map [C-return] 'set-mark-command)
;;neotree begin
(add-to-list 'load-path "~/.emacs.d/elpa/")
;; (add-to-list 'load-path "~/.emacs.d/elpa/multiple-cursors-20170908.1452")
;; (require 'multiple-cursors)
;; (require 'neotree)
;;Every time when the neotree window is opened, let it find current file and jump to node.
(setq neo-smart-open t)
;;When running ‘projectile-switch-project’ (C-c p p), ‘neotree’ will change root automatically.
 (setq projectile-switch-project-action 'neotree-projectile-action)
(global-set-key [f8] 'neotree-toggle)
;;neotree end
;;(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;;program mode begin
  ;; jdee-mode
 (add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")  
 (load "jde")
 ;; php-mode
  (autoload 'php-mode "php-mode" "PHP editing mode." t)
(setq auto-mode-alist (cons '("\\.php$" . php-mode) auto-mode-alist))
;; auto-indent
(add-hook 'php-mode-hook
(lambda ()
(local-set-key [?\C-p] (lambda () (interactive) (previous-line) (indent-according-to-mode)))
(local-set-key [?\C-n] (lambda () (interactive) (next-line) (indent-according-to-mode)))))
;;program mode end
  (load-theme 'leuven t)

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
