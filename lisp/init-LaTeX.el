;;about LaTeX
(require 'tex-site)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook (lambda ()
			     (turn-off-auto-fill)
			     (outline-minor-mode 1)
			     (setq TeX-show-compilation nil)
			     (setq TeX-clean-confirm nil)
			     (setq TeX-save-query nil)
;;			     (setq TeX-view-program-list '(("Evince" "evince %o")))
;;			     (setq TeX-view-program-selection
;;				   '((output-pdf "Evince")))
			     (setq TeX-global-PDF-mode t
				   TeX-engine 'xetex)
			     (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
			     (setq TeX-command-default "XeLaTeX")))

;;code fold
(TeX-fold-mode 1)
(setq TeX-fold-env-spec-list
(quote ((”[figure]” (”figure”))
(”[table]” (”table”))
(”[itemize]”(”itemize”))
(”[overpic]”(”overpic”)))))

;;RefTeX
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-auctex t)
;;*toc*buffer在左侧。
(setq reftex-toc-split-windows-horizontally t)
;;*toc*buffer使用整个frame的比例。
(setq reftex-toc-split-windows-fraction 0.2)

;;CDLaTeX
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)
;;LaTeX-math-mode
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;;自动换行
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)

(provide 'init-LaTeX)
