;(set-default-font "monaco-12")
;;--------------------------Themes
;(load-theme 'dracula t)
;(load-theme 'leuven)
;(load-theme ' gruvbox-dark-medium  t) ;;夜间
(load-theme ' gruvbox-dark-hard t)
;(load-theme 'gruvbox-light-soft t)
;------------------------mode-line
(require 'doom-modeline)
(doom-modeline-init)
(setq doom-modeline-buffer-file-name-style 'file-name)

;;----------Fonts
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(require 'all-the-icons)
;(setq all-the-icons-color-icons nil)
;(setq inhibit-compacting-font-caches t)
(setq neo-theme 'icons)

;;-----------------------Gui
(setq-default tab-width 4)
(setq display-time-use-mail t)
(setq frame-title-format '("Unix@Emacs" buffer-file-name))
(setq-default c-basic-offset 4)
(setq initial-scratch-message  "Hack World")
(tool-bar-mode -1) ;;关闭工具栏
(set-scroll-bar-mode -1)


;;设置窗口位置为屏库左上角(0,0)
;;(set-frame-position (selected-frame) 0 0)
;;设置宽和高,我的十寸小本是110,33,大家可以调整这个参数来适应自己屏幕大小
;(set-frame-width (selected-frame) 120)
;(set-frame-height (selected-frame) 30)
;(set-frame-parameter nil 'alpha 98) ;透明
(set-language-environment "UTF-8") ;;UTF-8
(menu-bar-mode -1)
(setq make-backup-files nil) ;;关闭备份
(scroll-bar-mode 0) ;;关闭文件滑动控件
(global-linum-mode 1) ;;显示行号
(setq ring-bell-function 'ignore) ;;关闭哔哔的警告提示音
(fset 'yes-or-no-p 'y-or-n-p) ;; （Y or N）
(setq inhibit-splash-screen 1) ;; 关闭启动帮助画面
(defun open-init-file()
  (interactive)
  (find-file "/home/unix/.emacs.d/init.el")) ;; 快速打开配置文件
(global-set-key (kbd "<f2>") 'open-init-file) ;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上



;;Neotree-Config-user
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)


(provide 'init-ui)
