(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (wakatime-mode php-cs-fixer highlight-doxygen flycheck-phpstan youdao-dictionary wanderlust wucuo pyim evil-nerd-commenter solarized-theme auto-complete term-keys markdown-preview-mode markdown-mode+ markdown-mode exwm-mff flycheck-popup-tip popup-complete phpcbf ede-php-autoload php-auto-yasnippets flycheck paredit-everywhere helm-ag-r helm-ag ag isearch-project swiper-helm swiper yasnippet-snippets yasnippet web-mode posframe quelpa-use-package use-package quelpa cal-china-x flymake-php flymake helm-swoop direx diff-hl ace-jump-mode powerline treemacs-evil treemacs-projectile treemacs-icons-dired treemacs-persp treemacs-magit magit window-numbering treemacs helm smex expand-region company-web company-shell company-phpactor company-php company-nginx company org light-soap-theme nofrils-acme-theme nlinum)))
 '(phpbot-bin-path "/home/jett/github/PHPBot/build/phpbot")
 '(phpcbf-executable "/home/jett/.config/composer/vendor/bin/phpcbf")
 '(phpcbf-standard "PSR2")
 '(pyim-dicts
   (quote
    ((:name "官方git提供" :file "~/下载/pyim-bigdict.pyim.gz")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "思源黑体" :foundry "ADBO" :slant normal :weight normal :height 143 :width normal)))))

;; MELPA源
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
  ;; and `package-pinned-packages`. Most users will not need or want to do this.
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  )
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

(add-to-list 'package-archives
             '("cselpa" . "https://elpa.thecybershadow.net/packages/"))

(package-initialize)

;; 修复终端快捷键
;;(require 'term-keys)
;;(term-keys-mode t)

;; (require 'term-keys-konsole)
;; (with-temp-buffer
;;  (insert (term-keys/konsole-keytab))
;;  (append-to-file (point-min) (point-max) "~/.local/share/konsole/Emacs.keytab"))

;; 默认显示行号和格式化
(global-linum-mode 1);
(setq linum-format "%d ")
;; 高亮当前行
(global-hl-line-mode t)
;; 隐藏菜单
(menu-bar-mode 0)
;; 鼠标指针颜色
(set-cursor-color "white")
;; 鼠标颜色
(set-mouse-color "white")
;; 不要生成临时文件
(setq-default make-backup-files nil)
;; 显示图片
(auto-image-file-mode t)
;; 显示列号
(setq mouse-yank-at-point t)



(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)

;; 范围选中 扩大和缩小
(require 'expand-region)
(global-set-key (kbd "s-w") 'er/expand-region)
(global-set-key (kbd "C-s-w") 'er/contract-region)

;; 常用操作
(global-set-key (kbd "s-j") (kbd "<left>"))
(global-set-key (kbd "s-k") (kbd "<down>"))
(global-set-key (kbd "s-i") (kbd "<up>"))
(global-set-key (kbd "s-l") (kbd "<right>"))
;; (global-set-key (kbd "C-p") 'recenter-top-bottom)
(global-set-key (kbd "s-u") (kbd "<home>"))
(global-set-key (kbd "s-o") (kbd "<end>"))
;; (global-set-key (kbd "C-d") 'kill-line)
;; (global-set-key (kbd "<RET>") 'newline)
;; 复制
(global-set-key (kbd "s-c") 'clipboard-kill-ring-save)
;; 剪切
(global-set-key (kbd "s-x") 'clipboard-kill-region)
;; 粘贴
(global-set-key (kbd "s-v") 'clipboard-yank)
;; 保存
(global-set-key (kbd "s-s") 'save-buffer)
;; 光标移动
(global-set-key (kbd "s-.") 'forward-sexp)
(global-set-key (kbd "C-s-l") 'forward-word)
(global-set-key (kbd "s-,") 'backward-sexp)
(global-set-key (kbd "C-s-j") 'backward-word)
(global-set-key (kbd "s-n") 'scroll-up)
(global-set-key (kbd "C-s-n") 'scroll-down)

;; 注释
(global-set-key (kbd "s-/") 'evilnc-comment-or-uncomment-lines)


;; (global-set-key (kbd "C-t") 'tab-to-tab-stop)

(global-set-key (kbd "C-c f") 'projectile--find-file)
(global-set-key (kbd "C-c d") 'projectile-find-dir)

(setq make-backup-files nil)

;; 搜索当前文件
(global-set-key (kbd "C-s") 'swiper-isearch)
(global-set-key (kbd "M-s") 'helm-ag)

;;(require 'color-theme)
;;(color-theme-initialize)
;;(color-theme-robin-hood)

;; 黄色主题
;;(require 'nofrils-acme-theme)
;;(load-theme 'nofrils-acme t)
;; (require 'light-soap-theme)
;; (load-theme 'light-soap t)
(load-theme 'solarized-light t)

;; make the fringe stand out from the background
(setq solarized-distinct-fringe-background t)

;; Don't change the font for some headings and titles
(setq solarized-use-variable-pitch nil)

;; make the modeline high contrast
(setq solarized-high-contrast-mode-line t)

;; Use less bolding
(setq solarized-use-less-bold t)

;; Use more italics
(setq solarized-use-more-italic t)

;; Use less colors for indicators such as git:gutter, flycheck and similar
(setq solarized-emphasize-indicators nil)

;; Don't change size of org-mode headlines (but keep other size-changes)
(setq solarized-scale-org-headlines nil)

;; Avoid all font-size changes
(setq solarized-height-minus-1 1.0)
(setq solarized-height-plus-1 1.0)
(setq solarized-height-plus-2 1.0)
(setq solarized-height-plus-3 1.0)
(setq solarized-height-plus-4 1.0)


;; 快捷键设置
(global-set-key (kbd "C-x b") 'ibuffer)
;; 菜单
(global-set-key (kbd "s-TAB") 'helm-buffers-list)

;; 高亮文档注释
(highlight-doxygen-global-mode 1)

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; PHP补全
(require 'php-mode)
(add-hook 'php-mode-hook
          '(lambda ()
             ;; Enable company-mode
             (company-mode t)
             (require 'company-php)

             ;; Enable ElDoc support (optional)
             (ac-php-core-eldoc-setup)

	     (setq php-default-style "psr2")
	     
             (set (make-local-variable 'company-backends)
                  '((company-ac-php-backend company-dabbrev-code)
                    company-capf company-files))

             ;; 静态错误分析
             (require 'flycheck-phpstan)
             (flycheck-mode t)

             ;; 方法跳转
             (define-key php-mode-map (kbd "M-]")
               'ac-php-find-symbol-at-point)
	     
             ;; 返回
             (define-key php-mode-map (kbd "M-[")
               'ac-php-location-stack-back)

	     ;; 方法提示
	     (define-key php-mode-map (kbd "M-\\")
               'ac-php-show-tip)

	     ;;(define-key php-mode-map (kbd "C-d")
	     ;;  'kill-line)
	     )
	  )

;; 代码风格
(add-hook 'php-mode-hook 'php-enable-psr2-coding-style)

;; 语法检查
;;(require 'flymake-php)
;;(add-hook 'php-mode-hook 'flymake-php-load)

;; 单词检查
;; (add-hook 'php-mode-hook #'wucuo-start)

;; 模板
(require 'yasnippet)
(setq yas-snippet-dirs
'("~/.emacs.d/yasnippet/snippets"
    ))
(yas-global-mode 1)

;; PHP模板
(require 'php-auto-yasnippets)
;; 加载composer提示
;;(php-mode . ((php-auto-yasnippet-required-files (list "~/.config/composer/vendor/autoload.php"))))

;; 格式化
(require 'phpcbf)
;;(require 'php-cs-fixer)
;;(setq php-cs-fixer-rules-level-part-options '())
;;(setq php-cs-fixer-rules-fixer-part-options '())
;; php格式化
;;(add-to-list 'load-path "/home/jett/.emacs.d/php-beautifier.el")
;;(require 'php-beautifier)

;; Auto format on save.
(add-hook 'php-mode-hook 'phpcbf-enable-on-save)
;;(add-hook 'php-mode-hook 'php-cs-fixer-before-save)


;; composer自动加载
(add-hook 'php-mode-hook #'ede-php-autoload-mode)

;; 书签跳转
(load-file "/home/jett/.emacs.d/bm.el")
(setq-default
 bm-recenter nil                        ;跳转到书签处时，是否将其调整到屏幕中心
 bm-highlight-style 'bm-highlight-line-and-fringe ;书签以何种形式展示
 bm-cycle-all-buffers t                           ;书签跳转时，是在当前buffer间跳转还是在所有buffer间跳转
 bm-in-lifo-order t)                              ;是否按照书签的添加顺序进行跳转（默认是从上到下按位置顺序跳转）

;; 磊雷大佬的GetSet生成
(load-file "/home/jett/.emacs.d/phpbot/phpbot.el")

;; 锁定win键
(load-file "/home/jett/elisp/winlock.el")

;; elisp
;;(add-hook 'emacs-lisp-mode-hook 'ac-config-default)
;;(require 'phpbot)

;; 加强M-X
;;(global-set-key (kbd "M-x") 'smex)
;;(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; 侧边栏sr-speedbar treemacs 
(require 'treemacs)
(global-set-key (kbd "C-c t t") 'treemacs)
(define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action)

;; 窗口编号
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))
(window-numbering-mode)

;; helm 加强M-x
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; 光标跳转
(require 'ace-jump-mode)
(global-set-key (kbd "C-c c") 'ace-jump-word-mode)
;;(global-set-key (kbd "C-c c SPC") 'ace-jump-char-mode)
(global-set-key (kbd "C-c h") 'ace-jump-line-mode)

;; 日历
(cal-china-x-birthday-from-chinese 1 1)

;; 弹出框架
;;(require 'posframe)

;;(quelpa '(hydra :repo "abo-abo/hydra" :fetcher github))

;;(quelpa '(hydra :repo "DogLooksGood/emacs-rime"
;;		:fetcher github
;;		:files ("rime.el" "Makefile" "lib.c")))

;;; Code:
;;(setq rime-user-data-dir "~/.config/fcitx/rime")

;;(setq rime-posframe-properties
;;      (list :background-color "#333333"
;;            :foreground-color "#dcdccc"
;;            :font "WenQuanYi Micro Hei Mono-14"
;;            :internal-border-width 10))

;;(setq default-input-method "rime"
;;      rime-show-candidate 'posframe)

(use-package pyim
  :ensure nil
  :demand t
  :config
  ;; 激活 basedict 拼音词库，五笔用户请继续阅读 README
  (use-package pyim-basedict
    :ensure nil
    :config (pyim-basedict-enable))

  (setq default-input-method "pyim")

  ;; 使用全拼
  (setq pyim-default-scheme 'quanpin)
  ;; (setq pyim-default-scheme 'microsoft-shuangpin)

  ;; 设置 pyim 探针设置，这是 pyim 高级功能设置，可以实现 *无痛* 中英文切换 :-)
  ;; 我自己使用的中英文动态切换规则是：
  ;; 1. 光标只有在注释里面时，才可以输入中文。
  ;; 2. 光标前是汉字字符时，才能输入中文。
  ;; 3. 使用 M-j 快捷键，强制将光标前的拼音字符串转换为中文。
  (setq-default pyim-english-input-switch-functions
                '(pyim-probe-dynamic-english
                  pyim-probe-isearch-mode
                  pyim-probe-program-mode
                  pyim-probe-org-structure-template))

  (setq-default pyim-punctuation-half-width-functions
                '(pyim-probe-punctuation-line-beginning
                  pyim-probe-punctuation-after-punctuation))

  ;; 开启拼音搜索功能
  (pyim-isearch-mode 1)

  ;; 使用 popup-el 来绘制选词框, 如果用 emacs26, 建议设置
  ;; 为 'posframe, 速度很快并且菜单不会变形，不过需要用户
  ;; 手动安装 posframe 包。
  (setq pyim-page-tooltip 'popup)

  ;; 选词框显示5个候选词
  (setq pyim-page-length 5)

  :bind
  (("M-j" . pyim-convert-string-at-point) ;与 pyim-probe-dynamic-english 配合
   ("C-;" . pyim-delete-word-from-personal-buffer)))

;; wakaTime 插件
(global-wakatime-mode)
(setq wakatime-api-key "ac5544ec-4b9b-41da-bf2f-4e07fae8eeff")


(put 'dired-find-alternate-file 'disabled nil)
