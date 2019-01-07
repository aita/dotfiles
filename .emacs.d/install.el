;; MELPAをパッケージレポジトリに追加
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(unless package-archive-contents (package-refresh-contents))


(defvar install-packages
      '(smartparens
        swiper
        undo-tree
        expand-region
        smartrep
        counsel
        projectile
        multiple-cursors
        exec-path-from-shell
        company
        irony
        rtags
        flycheck
        flycheck-irony
        company-irony
        aggressive-indent))


(dolist (package install-packages)
  (unless (package-installed-p package)
    (package-install package)))
