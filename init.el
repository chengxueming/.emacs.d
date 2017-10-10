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
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)
;; auto-complete begin
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20170124.1845/")
(add-to-list 'load-path "~/.emacs.d/elpa/popup-20160709.729/")
(require 'popup)
(require 'auto-complete-config)
;; change the path to where your dict fold locates,
;; and note that the trailing '/' must present.
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20170124.1845/dict/")
(ac-config-default)
(setq ac-auto-start t)
(setq ac-quick-help-delay 0.5)
(define-key ac-mode-map  [(control tab)] 'auto-complete)
;; auto-complete end
;;program mode begin
  ;; jdee-mode
 (add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")  
 (load "jde")
 ;; php-mode
  (autoload 'php-mode "php-mode" "PHP editing mode." t)
(setq auto-mode-alist (cons '("\\.php$" . php-mode) auto-mode-alist))
;; http://blog.gabrielsaldana.org/php-syntax-check-as-you-type-with-emacs/
;; Flymake PHP Extension
(require 'flymake)
(unless (fboundp 'flymake-php-init)
  (defun flymake-php-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "php" (list "-f" local-file "-l")))))
(let ((php-ext-re "\\.php[345]?\\'")
      (php-error-re
       "\\(?:Parse\\|Fatal\\) error: \\(.*\\) in \\(.*\\) on line \\([0-9]+\\)"))
  (unless (assoc php-ext-re flymake-allowed-file-name-masks)
    (add-to-list 'flymake-allowed-file-name-masks
                 (list php-ext-re
                       'flymake-php-init
                       'flymake-simple-cleanup
                       'flymake-get-real-file-name))
    (add-to-list 'compilation-error-regexp-alist-alist
                 (list 'compilation-php
                       php-error-re  2 3 nil nil))
    (add-to-list 'compilation-error-regexp-alist 'compilation-php)
    (add-to-list 'flymake-err-line-patterns
                 (list php-error-re 2 3 nil 1))))
;; add php flymake support
(add-hook 'php-mode-hook (lambda () (flymake-mode t)))
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
