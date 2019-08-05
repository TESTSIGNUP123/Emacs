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
(require 'init-package)
;;YOUdao
(setq url-automatic-caching t)
(global-set-key (kbd "C-c y") 'youdao-dictionary-search-at-point)
;(setq  youdao-dictionary-use-chinese-word-segmentation t)



