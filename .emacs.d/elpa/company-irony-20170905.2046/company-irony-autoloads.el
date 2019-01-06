;;; company-irony-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "company-irony" "../../../../.emacs.d/elpa/company-irony-20170905.2046/company-irony.el"
;;;;;;  "fe3df13eb81e97e7477c12c882ff1264")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-irony-20170905.2046/company-irony.el

(autoload 'company-irony "company-irony" "\


\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(autoload 'company-irony-setup-begin-commands "company-irony" "\
Include irony trigger commands to `company-begin-commands'.

This allow completion to be automatically triggered after member
accesses (obj.|, obj->|, ...).

This may be useful to company < `0.8.4', newer version of company
include these commands by default.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/company-irony-20170905.2046/company-irony-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/company-irony-20170905.2046/company-irony.el")
;;;;;;  (23601 59685 399835 731000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; company-irony-autoloads.el ends here
