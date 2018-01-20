(defun open-gu-document()
  (interactive)
  (find-file "D:\\Users\\GuangLai He\\Documents"))
(global-set-key (kbd "<f5>") 'open-gu-document)

(defun open-Diary()
  (interactive)
  (find-file "D:\\Users\\GuangLai He\\Documents\\Diary\\Diary.tex"))
(global-set-key (kbd "C-~") 'open-Diary)

(provide 'init-keybindings)
