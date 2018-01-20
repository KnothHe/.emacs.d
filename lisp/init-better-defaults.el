;;customize by myself
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

(setq default-fill-column 70)

;;turn off scroll bar
(scroll-bar-mode -1)

;;turn off tool bar
(tool-bar-mode -1)

;;change cursor type
(set-default 'cursor-type 'bar)

;;show line number on the left
(global-linum-mode 1)
(setq linum-format "%d ");;set linum-mode format

;;turn off start-up screen
(setq inhibit-splash-screen -1)

;;turn on company (complete anything)
(global-company-mode 1)

;;turn off backfile
(setq make-backup-files nil)

;;make the mark region can be deleted like normal enditor
(delete-selection-mode 1)

;;initialize fullscreen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;highlight current line
(global-hl-line-mode 1)

;;turn off bell
(setq ring-bell-function 'ignore)

(setq auto-save-default nil)

;;auto load chaged file outside
(global-auto-revert-mode 1)

;;change answer yes or no
(fset 'yes-or-no-p 'y-or-n-p)

;;cancle complete '
;;(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
;;(sp-local-pair 'lisp-interaction-mode "'" nil :actions nil)

;;set fontsize
(set-face-attribute 'default nil :height 120)

;;highlight brace match
(show-paren-mode 1)
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))

;;set fontsize
;;(set-face-attribute 'default nil :height 120)
;;have been defaulted

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

(defun open-gu-document()
  (interactive)
  (find-file "D:\\Users\\GuangLai He\\Documents"))
(global-set-key (kbd "<f4>") 'open-gu-document)

(defun open-Diary()
  (interactive)
  (find-file "D:\\Users\\GuangLai He\\Documents\\Diary\\Diary.tex"))
(global-set-key (kbd "C-M-`") 'open-Diary)

;; ;;slove the problem about line ending in UNIX and DOS
;; (defun hidden-dos-eol ()
;;   "Do not show ^M in files containing mixed UNIX and DOS line endings."
;;   (interactive)
;;   (unless buffer-display-table
;;     (setq buffer-display-table (make-display-table)))
;;   (aset buffer-display-table ?\^M []))

;; (global-set-key (kbd "C-=") 'er/expand-region)

;; (global-set-key (kbd "M-s e") 'iedit-mode)

;; set default encoding to utf-8
(setq-default buffer-file-coding-system 'utf-8)
;; set writing buffer default to utf-8, or emacs always show encoding
;; problem when saving files.
(setq save-buffer-coding-system 'utf-8)
(setq coding-system-for-write 'utf-8)

;;show date and time
(setq display-time-day-and-date t)
(display-time)
(setq display-time-24hr-format t)

(provide 'init-better-defaults)
