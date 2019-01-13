; 文字コードの設定
(set-language-environment 'Japanese)    ; 日本語環境
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(setq default-file-name-coding-system 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(prefer-coding-system 'utf-8-unix)

;; C-hにバックスペースを割り当てる
(define-key key-translation-map [?\C-h] [?\C-?])
;; helpを別のキーバインドする
(global-set-key (kbd "M-?") 'help-for-help)

;; 起動画面を表示しない
(setq inhibit-startup-screen t)

;; ビープ音が鳴らないようにする
(setq ring-bell-function 'ignore)

;; ロックファイル / バックアップファイルを作成しない
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq delete-auto-save-files t)

;; 対応するカッコを強調表示
(show-paren-mode t)

;; 行番号の表示
(global-linum-mode)
(setq linum-format "%4d ")

;; 列数の表示
(column-number-mode t)
;; 時間の表示
(display-time)

;; カーソルを点滅させない
(blink-cursor-mode 0)

;; スクロールバーを非表示にする
(scroll-bar-mode 0)

;; 現在行をハイライト
(global-hl-line-mode)
(add-hook 'term-mode-hook '(lambda () (setq-local global-hl-line-mode nil)))

;; テーマの設定
(load-theme 'misterioso t)
;; メニューバーを非表示
(menu-bar-mode 0)
;; ツールバーを非表示
(tool-bar-mode 0)

;; C-kで改行も削除する
(setq kill-whole-line t)

;; インデントにタブを挿入しない
(setq-default indent-tabs-mode nil)

;; 大文字化・小文字化を問い合わせ無しで行う
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; C-jとC-mを入れ替えるelectric-indent-modeを無効にする
(electric-indent-mode 0)

;; windmoveにキーバインドを割り当てる
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; 終了時の状態を保存する
(desktop-save-mode t)

;; ログインシェルによらずシェルをbashにする
(setenv "SHELL" "/bin/bash")
(setq explicit-shell-file-name "/bin/bash")


;; MELPAをパッケージレポジトリに追加
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; package-installのあとにinit.elではなくcustom.elに書き込むようにする
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; projectile
(projectile-mode t)

;; undo-tree
(global-undo-tree-mode t)

;; $PATHをシェルの設定から引き継ぐ
(exec-path-from-shell-initialize)

;; editorconfig
(editorconfig-mode t)

;; neotree
(global-set-key (kbd "<f8>") 'neotree-toggle)
(setq projectile-switch-project-action 'neotree-projectile-action)

;; ivyの設定
(ivy-mode 1)
(setq ivy-count-format "(%d/%d) ")
;; ディレクトリを選択してRETURNキーを押したとき確定させずに、ディレクトリのファイルを候補にする
(define-key ivy-minibuffer-map (kbd "RET") #'ivy-alt-done)
(define-key ivy-minibuffer-map (kbd "C-j") #'ivy-immediate-done)

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
;; (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;; 行末の空白を保存時に消す
(require 'whitespace)
(setq whitespace-style
      '(face empty trailing lines-tail tabs tab-mark))
(setq whitespace-action '(auto-cleanup))
(global-whitespace-mode t)

;; smatparens
;; カッコを自動補完
(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions)
;; "{" の入力の後に改行されるようにする
(sp-local-pair 'c-mode "{" nil :post-handlers '(:add "\n||\n[i]"))
(sp-local-pair 'c++-mode "{" nil :post-handlers '(:add "\n||\n[i]"))

;; expand-region
(global-set-key (kbd "C-@") 'er/expand-region)
(global-set-key (kbd "C-M-@") 'er/contract-region) ; リージョンを狭める
(transient-mark-mode t)

;; iedit
(require 'iedit)            ; 読み込まないとキーバインドが設定されない

;; flycheck 構文チェックの有効化
(add-hook 'after-init-hook #'global-flycheck-mode)

;; quickrun
(global-set-key (kbd "<f5>") 'quickrun)

;; company-modeを有効にする
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'shell-mode-hook (lambda () (company-mode -1)))
(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 1)
(setq company-selection-wrap-around t)
;; キーバインドの変更
(define-key company-active-map (kbd "M-n") nil)
(define-key company-active-map (kbd "M-p") nil)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "C-h") nil)

;; diminish
(diminish 'abbrev-mode "Abv")
(diminish 'company-mode)
(diminish 'editorconfig-mode)
(diminish 'ivy-mode)
(diminish 'undo-tree-mode)
(diminish 'projectile-mode)
(diminish 'whitespace-mode)

;; C/C++
(require 'cc-mode)
(add-hook 'c-mode-hook
          '(lambda ()
             (c-toggle-electric-state -1)))

;; Coding Style
(setq-default c-default-style "linux"
              c-basic-offset 4
              c++-indent-level 4
              indent-tabs-mode nil)

;; GDB
(setq gdb-many-windows 1)

;; irony-mode
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; company-irony
(eval-after-load 'company
  '(add-to-list 'company-backends '(company-irony-c-headers company-irony)))

;; flycheck-irony
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;; rtags
;; result backendをivyにする
(setq rtags-display-result-backend 'ivy)

;; rtagsのキーバインドを追加
(define-key c-mode-base-map (kbd "M-.") 'rtags-find-symbol-at-point)
(define-key c-mode-base-map (kbd "M-@") 'rtags-find-references-at-point)
(define-key c-mode-base-map (kbd "M-,") 'rtags-location-stack-back)
(define-key c-mode-base-map (kbd "M-;") 'rtags-find-file)
;; (define-key c-mode-base-map (kbd "C-.") 'rtags-find-symbol)
;; (define-key c-mode-base-map (kbd "C-,") 'rtags-find-references)
;; (define-key c-mode-base-map (kbd "C-<") 'rtags-find-virtuals-at-point)

;; semantic
(semantic-mode 1) ;; -> this is optional for Lisp
(define-key c-mode-base-map (kbd "M-RET") 'srefactor-refactor-at-point)
(global-set-key (kbd "M-RET o") 'srefactor-lisp-one-line)
(global-set-key (kbd "M-RET m") 'srefactor-lisp-format-sexp)
(global-set-key (kbd "M-RET d") 'srefactor-lisp-format-defun)
(global-set-key (kbd "M-RET b") 'srefactor-lisp-format-buffer)

;; 保存時にclang-formatでフォーマットする
(add-hook 'c-mode-common-hook
          '(lambda ()
             (add-hook 'local-write-file-hooks
                       '(lambda ()
                          (when (file-exists-p (expand-file-name ".clang-format" (projectile-project-root)))
                            (clang-format-buffer))))))


;; OCaml
(when (file-exists-p (expand-file-name ".opam" user-emacs-directory))
  ;; -- opam and utop setup --------------------------------
  ;; Setup environment variables using opam
  (dolist
      (var (car (read-from-string
                 (shell-command-to-string "opam config env --sexp"))))
    (setenv (car var) (cadr var)))
  ;; Update the emacs path
  (setq exec-path (split-string (getenv "PATH") path-separator))
  ;; Update the emacs load path
  (push (concat (getenv "OCAML_TOPLEVEL_PATH")
                "/../../share/emacs/site-lisp") load-path)
  ;; Automatically load utop.el
  (autoload 'utop "utop" "Toplevel for OCaml" t)
  (autoload 'utop-setup-ocaml-buffer "utop" "Toplevel for OCaml" t)
  (add-hook 'tuareg-mode-hook 'utop-setup-ocaml-buffer)


  (add-hook 'tuareg-mode-hook 'merlin-mode)
  (require 'ocp-indent)
  (add-hook 'tuareg-mode-hook
            '(lambda ()
               (add-hook 'local-write-file-hooks 'ocp-indent-buffer))))
