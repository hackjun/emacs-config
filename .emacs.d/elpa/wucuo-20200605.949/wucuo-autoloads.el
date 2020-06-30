;;; wucuo-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "wucuo" "wucuo.el" (0 0 0 0))
;;; Generated autoloads from wucuo.el

(autoload 'wucuo-current-font-face "wucuo" "\
Get font face under cursor.
If QUIET is t, font face is not output.

\(fn &optional QUIET)" t nil)

(autoload 'wucuo-split-camel-case "wucuo" "\
Split camel case WORD into a list of strings.
Ported from 'https://github.com/fatih/camelcase/blob/master/camelcase.go'.

\(fn WORD)" nil nil)

(autoload 'wucuo-check-camel-case-word-predicate "wucuo" "\
Use aspell to check WORD.  If it's typo return t.

\(fn WORD)" nil nil)

(autoload 'wucuo-generic-check-word-predicate "wucuo" "\
Function providing per-mode customization over which words are spell checked.
Returns t to continue checking, nil otherwise.

\(fn)" nil nil)

(autoload 'wucuo-create-aspell-personal-dictionary "wucuo" "\
Create aspell personal dictionary.

\(fn)" t nil)

(autoload 'wucuo-create-hunspell-personal-dictionary "wucuo" "\
Create hunspell personal dictionary.

\(fn)" t nil)

(autoload 'wucuo-version "wucuo" "\
Output version.

\(fn)" nil nil)

(autoload 'wucuo-spell-check-buffer "wucuo" "\
Spell check current buffer.

\(fn)" nil nil)

(autoload 'wucuo-start "wucuo" "\
Turn on wucuo to spell check code.  ARG is ignored.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "wucuo" '("wucuo-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; wucuo-autoloads.el ends here
