(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file)

  ;; MELPAをパッケージレポジトリに追加
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (package-initialize)
  (unless package-archive-contents (package-refresh-contents))

  (dolist (package package-selected-packages)
    (unless (package-installed-p package)
      (package-install package))))
