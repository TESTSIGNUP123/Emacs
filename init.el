(setq load-prefer-newer t)
(package-initialize)
      (setq  package-archives 
      '(("gnu" . "http://elpa.emacs-china.org/gnu/")
        ("org"   . "http://elpa.emacs-china.org/org/")
        ("melpa"   . "http://elpa.emacs-china.org/melpa/")))


;;显示加载时间
(defvar mage-init-time 'nil) (defun mage-display-benchmark()
  (message "Mage loaded %s packages in %.03fs"
           (length package-activated-list)
           (or mage-init-time
               (setq mage-init-time
                     (float-time (time-subtract (current-time) before-init-time))))))
(add-hook 'emacs-startup-hook #'mage-display-benchmark)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(require  'init-code)
(require  'init-ui)
(require  'init-modeline)
(require  'init-org)

;;YOUdao
(setq url-automatic-caching t)
(global-set-key (kbd "C-c y") 'youdao-dictionary-search-at-point)
;(setq  youdao-dictionary-use-chinese-word-segmentation t)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(youdao-dictionary slime org-bullets neotree lsp-java lsp-haskell leuven-theme helm gruvbox-theme elpy eldoc-eval dracula-theme doom-modeline company-lsp autopair anaconda-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-preview ((t (:background "gold3" :foreground "black"))))
 '(company-preview-common ((t (:background "gold3" :foreground "grey20"))))
 '(company-preview-search ((t (:background "green4" :foreground "green"))))
 '(company-scrollbar-bg ((t (:background "#303030"))))
 '(company-scrollbar-fg ((t (:background "#404040"))))
 '(company-tooltip ((t (:background "#202020" :foreground "grey"))))
 '(company-tooltip-annotation ((t (:foreground "gold"))))
 '(company-tooltip-annotation-selection ((t (:foreground "white"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :foreground "white"))))
 '(company-tooltip-common-selection ((t (:foreground "white"))))
 '(company-tooltip-selection ((t (:background "red3" :foreground "white")))))
