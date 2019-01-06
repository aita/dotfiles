;;; irony-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "irony" "../../../../.emacs.d/elpa/irony-20181218.2241/irony.el"
;;;;;;  "065ba28df107864c1099f154c0c86380")
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20181218.2241/irony.el

(defvar irony-additional-clang-options nil "\
Additional command line options to pass down to libclang.

Please, do NOT use this variable to add header search paths, only
additional warnings or compiler options.

These compiler options will be prepended to the command line, in
order to not override the value coming from a compilation
database.")

(custom-autoload 'irony-additional-clang-options "irony" t)

(autoload 'irony-mode "irony" "\
Minor mode for C, C++ and Objective-C, powered by libclang.

\(fn &optional ARG)" t nil)

(autoload 'irony-version "irony" "\
Return the version number of the file irony.el.

If called interactively display the version in the echo area.

\(fn &optional SHOW-VERSION)" t nil)

(autoload 'irony-server-kill "irony" "\
Kill the running irony-server process, if any.

\(fn)" t nil)

(autoload 'irony-get-type "irony" "\
Get the type of symbol under cursor.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "irony-cdb" "../../../../.emacs.d/elpa/irony-20181218.2241/irony-cdb.el"
;;;;;;  "350719950cdfa44f4e620c9463b7dfb5")
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20181218.2241/irony-cdb.el

(autoload 'irony-cdb-autosetup-compile-options "irony-cdb" "\


\(fn)" t nil)

(autoload 'irony-cdb-menu "irony-cdb" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil "irony-cdb-clang-complete" "../../../../.emacs.d/elpa/irony-20181218.2241/irony-cdb-clang-complete.el"
;;;;;;  "c61e5aa72b58a89991c6f144bee28684")
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20181218.2241/irony-cdb-clang-complete.el

(autoload 'irony-cdb-clang-complete "irony-cdb-clang-complete" "\


\(fn COMMAND &rest ARGS)" nil nil)

;;;***

;;;### (autoloads nil "irony-cdb-json" "../../../../.emacs.d/elpa/irony-20181218.2241/irony-cdb-json.el"
;;;;;;  "cee6533475aad95ca079d2441b4ddef0")
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20181218.2241/irony-cdb-json.el

(autoload 'irony-cdb-json "irony-cdb-json" "\


\(fn COMMAND &rest ARGS)" nil nil)

(autoload 'irony-cdb-json-add-compile-commands-path "irony-cdb-json" "\
Add an out-of-source compilation database.

Files below the PROJECT-ROOT directory will use the JSON
Compilation Database as specified by COMPILE-COMMANDS-PATH.

The JSON Compilation Database are often generated in the build
directory. This functions helps mapping out-of-source build
directories to project directory.

\(fn PROJECT-ROOT COMPILE-COMMANDS-PATH)" t nil)

(autoload 'irony-cdb-json-select "irony-cdb-json" "\
Select CDB to use with a prompt.

It is useful when you have several CDBs with the same project
root.

The completion function used internally is `completing-read' so
it could easily be used with other completion functions by
temporarily using a let-bind on `completing-read-function'. Or
even helm by enabling `helm-mode' before calling the function.

\(fn)" t nil)

(autoload 'irony-cdb-json-select-most-recent "irony-cdb-json" "\
Select CDB that is most recently modified.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "irony-cdb-libclang" "../../../../.emacs.d/elpa/irony-20181218.2241/irony-cdb-libclang.el"
;;;;;;  "5eaf57500cadaaacca6b3e5f674109e3")
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20181218.2241/irony-cdb-libclang.el

(autoload 'irony-cdb-libclang "irony-cdb-libclang" "\


\(fn COMMAND &rest ARGS)" nil nil)

;;;***

;;;### (autoloads nil "irony-completion" "../../../../.emacs.d/elpa/irony-20181218.2241/irony-completion.el"
;;;;;;  "869f75ef70ee3d1f7787679b798c3db6")
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20181218.2241/irony-completion.el

(autoload 'irony-completion-at-point "irony-completion" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/irony-20181218.2241/irony-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20181218.2241/irony-cdb-clang-complete.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20181218.2241/irony-cdb-json.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20181218.2241/irony-cdb-libclang.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20181218.2241/irony-cdb.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20181218.2241/irony-completion.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20181218.2241/irony-diagnostics.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20181218.2241/irony-iotask.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20181218.2241/irony-pkg.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20181218.2241/irony-snippet.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20181218.2241/irony.el")
;;;;;;  (23601 59681 889995 245000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; irony-autoloads.el ends here
