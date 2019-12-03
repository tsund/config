(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/"))
(package-initialize)

(let ((default-directory  "~/.emacs.d/custom_packages/"))
  (normal-top-level-add-subdirs-to-load-path))

(cua-mode t)
(ido-mode t)
(dumb-jump-mode t)
(show-paren-mode t)
(setq show-paren-style 'expression)

(setq create-lockfiles nil)
(setq make-backup-files         nil); Don't want any backup files
(setq auto-save-list-file-name  nil); Don't want any .saves files
(setq auto-save-default         nil); Don't want any auto saving

(setq cperl-indent-level 4
      cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-parens-as-block t
      cperl-indent-subs-specially nil)

(setq web-mode-enable-auto-indentation nil)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(defvar erlang-indent-level 4)

(setq auto-mode-alist
      (append '(
  ("\\.pm$"           .       cperl-mode)
  ("\\.pl$"           .       cperl-mode)
  ("\\.cgi$"          .       cperl-mode)
  ("\\.html$"         .       web-mode)
  ("\\.hbs$"          .       web-mode)
  ("\\.tmpl$"         .       web-mode)
  ("\\.less$"         .       web-mode)
  ("\\.js$"           .       web-mode)
  ("\\.vue$"          .       web-mode)
  ("\\.html\\.ep$"    .       web-mode)
  ("\\.php$"          .       php-mode)
  )
              auto-mode-alist))

(defalias 'perl-mode 'cperl-mode)

(add-to-list 'custom-theme-load-path "/home/tsund/.emacs.d/themes")

(load-theme 'spacemacs-dark t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "43b219a31db8fddfdc8fdbfdbd97e3d64c09c1c9fdd5dff83f3ffc2ddb8f0ba0" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" default)))
 '(electric-indent-mode nil)
 '(electric-layout-mode t)
 '(package-selected-packages
   (quote
    (docker-tramp erlang vue-mode yaml-mode multi-web-mode dockerfile-mode php-mode dumb-jump js2-mode web-mode magit neotree spacemacs-theme solarized-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq show-trailing-whitespace t)

(defun insert-tab ()
  (interactive)
  (cond ((eq indent-tabs-mode nil) (insert "    "))
        (t (insert "\t")))
  )

(global-set-key (kbd "<C-tab>") 'insert-tab)
