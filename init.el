(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

 ;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "fd2c2d45aca20ba76b25c86beed11a35970ef4ed96d73a4a69d4e427d9a6597d" "f8cf128fa0ef7e61b5546d12bb8ea1584c80ac313db38867b6e774d1d38c73db" "808dcce7c5285915214f85090519493a42db6f34281bca84f6787958344a31ea" "b97a01622103266c1a26a032567e02d920b2c697ff69d40b7d9956821ab666cc" default)))
 '(fci-rule-color "#3E4451")
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://stable.melpa.org/packages/")
     ("popkit" . "http://elpa.popkit.org/packages/"))))
 '(package-selected-packages
   (quote
    (ace-jump-mode evil smex auto-complete ace-window use-package pyim pyim-basedict dracula-theme rainbow-delimiters hungry-delete counsel company cdlatex auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "微软雅黑")))))

(require 'init-dired)
(require 'init-LaTeX)
(require 'init-better-defaults)
(require 'init-keybindings)
(require 'init-pyim) 
(require 'init-evil-mode)
(require 'init-ace-jump-mode)
