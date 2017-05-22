;; -*-Emacs-Lisp-*- -*- coding: koi8-r -*-

;; Supress startup help
(setq inhibit-startup-message t)

;; text selection (shift+arrows)
;(cua-selection-mode t)

;; conservatively scrolling
(setq scroll-conservatively 50)
(setq scroll-margin 4)

;; Show cursor position and date-time at modline
(column-number-mode t)
;(display-time)

;; This file is designed to be re-evaled; use the variable first-time
;; to avoid any problems with this.
(defvar first-time t
  "Flag signifying this is the first time that .emacs has been evaled")

;; nice scrolling:)
(setq scroll-preserve-screen-position 't)
(setq scroll-bar-mode-explicit t)
(set-scroll-bar-mode `right)

;; I don't need toolbar
(tool-bar-mode -1)

;; Mouse
(global-set-key [mouse-3] 'imenu)
(mouse-wheel-mode t)

;; If you have used XEmacs before, you would have noticed while typing
;; a search word in GNU Emacs, hitting the backspace key will not modify
;; the search word, but delete a charater in the edit buffer.
;; This is sometime annoying.
;; Here is the fix.
(define-key isearch-mode-map '[backspace] 'isearch-delete-char)

;; make "Ctrl-k" kills an entire line if the cursor is at the beginning of line
(setq kill-whole-line t)

;; highlight current line
(global-hl-line-mode 1)
;(set-face-background 'hl-line "#333")

(setq stack-trace-on-error t)
(add-to-list 'load-path
           "/usr/share/emacs/site-lisp/ecb")
(setq ecb-tip-of-the-day nil)

;(add-to-list 'load-path
;	     "~/.emacs.rc.d/cedet/semantic")

;(load-file "~/.emacs.rc.d/cedet/common/cedet.el")
;(load-file "~/.emacs.rc.d/cedet/semantic/semantic.el")
;(load-file "~/.emacs.rc.d/cedet/speedbar/speedbar.el")
;(load-file "~/.emacs.d/cedet//.el")
;(load-file "~/.emacs.d/cedet//.el")
;(load-file "~/.emacs.d/cedet//.el")
;(load-file "/usr/share/emacs/site-lisp/semantic/semantic.el")
;(load-file "/usr/share/emacs/site-lisp/speedbar/speedbar.el")
;(load-file "/usr/share/emacs/site-lisp/eieio/eieio.el")
;(load-file "/usr/share/emacs/site-lisp/semantic/semantic.el")
;(load-file "/usr/share/emacs/site-lisp/semantic/semantic-ia.el")

;(load-file "/usr/share/emacs/site-lisp/ecb/ecb.el")
;(load-file "/usr/share/emacs/site-lisp/php-mode.el")
;(load-file "/usr/local/share/emacs/site-lisp/python-mode.el")


;; Gentoo-specific
;; (All site initialization for Gentoo-installed packages)
(load "/usr/share/emacs/site-lisp/site-gentoo" nil t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; semantic
;(require 'semantic-ia)
;(require 'semantic-gcc)

(setq semantic-load-turn-useful-things-on t)
;(semantic-load-enable-code-helpers)
;(semantic-load-enable-excessive-code-helpers)

;(setq-mode-local c-mode semanticdb-find-default-throttle
;  '(project unloaded system recursive))

;;; ede customization
;(require 'semantic-lex-spp)
(global-ede-mode 1)
;(global-srecode-minor-mode 1)            ; Enable template insertion menu


;;; Calendar settings
(setq calendar-latitude 9.5120)
(setq calendar-longitude 100.0136)
(setq calendar-location-name "Koh Samui")
(setq calendar-standard-time-zone-name "ICT")
(setq calendar-daylight-time-zone-name "ICT")

;; Google style
;(load-file "~/.emacs.rc.d/google-c-style.el")
;(add-hook 'c-mode-common-hook 'google-make-newline-indent)
;(add-hook 'c-mode-common-hook 'google-set-c-style)

;; dired - single buffer
;(load-file "~/.emacs.rc.d/dired-single.el")




(defun my-dired-init ()
  "Bunch of stuff to run for dired, either immediately or when it's
  loaded."
  ;; <add other stuff here>
  (define-key dired-mode-map [return] 'joc-dired-single-buffer)
  (define-key dired-mode-map [mouse-1] 'joc-dired-single-buffer-mouse)
  (define-key dired-mode-map "^"
	(function
	 (lambda nil (interactive) (joc-dired-single-buffer "..")))))

  ;; if dired's already loaded, then the keymap will be bound
  (if (boundp 'dired-mode-map)
	;; we're good to go; just add our bindings
        (my-dired-init)
    ;; it's not loaded yet, so add our bindings to the load-hook
    (add-hook 'dired-load-hook 'my-dired-init))

;;; IRC
;(require 'erc)
;(require 'erc-lang)
;(require 'erc-list)
;; autojoin
;(setq erc-autojoin-channels-alist
;      '(("freenode.net" "#emacs" "#gentoo-ru" "#ubuntu-ru" "#nitdroid")))
;(erc :server "irc.freenode.net" :port 6667 :nick "e-yes" :full-name "Alexey Roslyakov" :password "")
;; auto-away
;(setq erc-autoaway-idle-seconds 300)
;(setq erc-auto-set-away t)
;(setq erc-autoaway-use-emacs-idle t)
;(setq erc-auto-discard-away t)
;; encoding
;(add-to-list 'erc-encoding-coding-alist '("#local" . cp1251))
;; Interpret mIRC-style color commands in IRC chats
;(setq erc-interpret-mirc-color t)

;;; Nice buffer switching
;(global-set-key "\C-x\C-b" 'ibuffer)
;(require 'iswitchb)
;(iswitchb-mode 1)
;(add-to-list 'iswitchb-buffer-ignore "*Messages*")
;(add-to-list 'iswitchb-buffer-ignore "*Backtrace")
;(add-to-list 'iswitchb-buffer-ignore "*Quail Com")
;(add-to-list 'iswitchb-buffer-ignore "*Buffer")
;(add-to-list 'iswitchb-buffer-ignore "*fsm-debug")
;(add-to-list 'iswitchb-buffer-ignore "*Completions")
;(add-to-list 'iswitchb-buffer-ignore "^[tT][aA][gG][sS]$")


;; make buffer switch command auto suggestions, also for find-file command
(ido-mode 1)

;;; Htmlize
;;  http://fly.srk.fer.hr/~hniksic/emacs/htmlize.el
(require 'htmlize)

;;;   Руссификация
;; Устанавливаем кодировки по умолчанию для файлов,
;; буферов и обмена с внешними программами
;set-language-environment 'Cyrillic-KOI8)
(set-language-environment 'UTF-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(setq default-input-method 'russian-computer)
;(setq default-buffer-file-coding-system 'utf-8)
;prefer-coding-system 'cp866)
;prefer-coding-system 'koi8-r)
;(define-coding-system-alias 'koi8-u 'koi8-r)
;(define-coding-system-alias 'koi8 'koi8-r)
;(set-terminal-coding-system 'koi8-r)
;(set-keyboard-coding-system 'koi8-r)
;(setq-default coding-system-for-read 'koi8-r)
;(setq-default coding-system-for-write 'koi8-r)
;(setq selection-coding-system 'koi8-r)
(setq default-process-coding-system 'utf-8)
;(if (string> (substring emacs-version 0 2) "21") '(koi8-r . koi8-r) 'koi8-r))
;(put-charset-property 'cyrillic-iso8859-5 'preferred-coding-system 'koi8-r)
;; Поддержка русской кодировки M$ Windows
;(codepage-setup 1251)
;(codepage-setup 866)
;(define-coding-system-alias 'windows-1251 'cp1251)
(define-coding-system-alias 'cp866-dos 'dos)
(set-input-mode nil nil 'We-will-use-eighth-bit-of-input-byte)

;;
;; Чтобы раскладка соответствовала раскладке русских букв на виндовых (а теперь
;;   таких большинство) клавиатурах, можно добавить ещё следующие строки:
;;
;; redefine some orginal keybindings под MS - можно ли попроще?
;;
;; кнопка \| => \/ при переключения регистра (для моего удобства)
;;
 (quail-define-package
  "cyrillic-jcuken" "Cyrillic" "RU" nil
  "ЙЦУКЕH keyboard layout widely used in Russia (ISO 8859-5 encoding)"
  nil t t t t nil nil nil nil nil t)

 (quail-define-rules
  ("1" ?1) ("2" ?2) ("3" ?3) ("4" ?4) ("5" ?5) ("6" ?6) ("7" ?7) ("8" ?8)
  ("9" ?9) ("0" ?0) ("-" ?-) ("=" ?=) ("`" ?ё) ("q" ?й) ("w" ?ц) ("e" ?у)
  ("r" ?к) ("t" ?е) ("y" ?н) ("u" ?г) ("i" ?ш) ("o" ?щ) ("p" ?з) ("[" ?х)
  ("]" ?ъ) ("a" ?ф) ("s" ?ы) ("d" ?в) ("f" ?а) ("g" ?п) ("h" ?р) ("j" ?о)
  ("k" ?л) ("l" ?д) (";" ?ж) ("'" ?э) ("\\" ?\\) ("z" ?я) ("x" ?ч) ("c" ?с)
  ("v" ?м) ("b" ?и) ("n" ?т) ("m" ?ь) ("," ?б) ("." ?ю) ("/" ?.) ("!" ?!)
  ("@" ?\") ("#" ?#) ("$" ?\;) ("%" ?%) ("^" ?:) ("&" ??) ("*" ?*) ("(" ?()
  (")" ?)) ("_" ?_) ("+" ?+) ("~" ?Ё)
  ("Q" ?Й) ("W" ?Ц) ("E" ?У) ("R" ?К) ("T" ?Е) ("Y" ?Н) ("U" ?Г) ("I" ?Ш)
  ("O" ?Щ) ("P" ?З) ("{" ?Х) ("}" ?Ъ) ("A" ?Ф) ("S" ?Ы) ("D" ?В) ("F" ?А)
  ("G" ?П) ("H" ?Р) ("J" ?О) ("K" ?Л) ("L" ?Д) (":" ?Ж) ("\"" ?Э) ("|" ?/)
  ("Z" ?Я) ("X" ?Ч) ("C" ?С) ("V" ?М) ("B" ?И) ("N" ?Т) ("M" ?Ь) ("<" ?Б)
  (">" ?Ю) ("?" ?,))

;; Create Cyrillic-CP1251 Language Environment menu item
;; (set-language-info-alist
;;  "Cyrillic-CP1251" `((charset cyrillic-iso8859-5)
;; 		     "Cyrillic-CP1251" `((charset cyrillic-koi8-r)
;; 					 (coding-system cp1251)
;; 					 (coding-priority cp1251)
;; 					 (input-method . "cyrillic-jcuken")
;; 					 (features cyril-win-util)
;; 					 (unibyte-display . koi8-r)
;; 					 (sample-text . "Russian (пСЯЯЙХИ)    гДПЮБЯРБСИРЕ!")
;; 					 (documentation . "Support for Cyrillic CP1251."))
;; 		     '("Cyrillic"))


(defun My-select-coding ()
  (interactive)
  (let ((noconf (not (buffer-modified-p))))
    (set-buffer-file-coding-system
     (read-coding-system "Select coding system: "))
    (revert-buffer)))

(global-set-key "\C-xr"          'My-select-coding)
;;

(defvar c++-source-extension-list '("c" "cc" "C" "cpp" "cxx" "c++"))
(defvar c++-header-extension-list '("h" "hh" "H" "hpp"))

;; Default extension for c++ header files.
(defvar c++-default-header-ext "h")
;; Default extension for c++ source files.
(defvar c++-default-source-ext "cpp")
;; Default regexp for c++ header files.
(defvar c++-header-ext-regexp "\\.\\(hpp\\|h\\|\hh\\|H\\)$")
;; Default regexp for c++ source files.
(defvar c++-source-ext-regexp "\\.\\(cpp\\|cxx\\|c\\|\cc\\|C\\)$")

;; Switches between source/header files
(defun my-toggle-source-header()
  "Switches to the source buffer if currently in the header buffer and vice versa."
  (interactive)
  (let ((buf (current-buffer))
        (name (file-name-nondirectory (buffer-file-name)))
        file
        offs)
    (setq offs (string-match c++-header-ext-regexp name))
    (if offs
        (let ((lst c++-source-extension-list)
              (ok nil)
              ext)
          (setq file (substring name 0 offs))
          (while (and lst (not ok))
            (setq ext (car lst))
            (if (file-exists-p (concat file "." ext))
                  (setq ok t))
            (setq lst (cdr lst)))
          (if ok
              (find-file (concat file "." ext))))
      (let ()
        (setq offs (string-match c++-source-ext-regexp name))
        (if offs
            (let ((lst c++-header-extension-list)
                  (ok nil)
                  ext)
              (setq file (substring name 0 offs))
              (while (and lst (not ok))
                (setq ext (car lst))
                (if (file-exists-p (concat file "." ext))
                    (setq ok t))
                (setq lst (cdr lst)))
              (if ok
                  (find-file (concat file "." ext)))))))))


(defun my-home ()
  "Toggle the point between the beginning of the current line, and the first non-whitespace character on the line."
  (interactive)
  (let ((pos (save-excursion (back-to-indentation) (point))))
    (if (equal pos (point))
        (beginning-of-line)
      (back-to-indentation))))

(global-set-key [home] 'my-home)


;; Meta
(global-set-key "\M- " 'set-mark-command)
(global-set-key "\M-\C-h" 'backward-kill-word)
(global-set-key "\M-\C-r" 'query-replace)
(global-set-key "\M-r" 'replace-string)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\M-h" 'help-command)

;; Function keys
(global-set-key [f1] 'manual-entry)
(global-set-key [f2] 'info)
(global-set-key [f3] 'repeat-complex-command)
(global-set-key [f4] '(lambda () (interactive) (kill-buffer (current-buffer))))

(global-set-key [f5] 'my-toggle-source-header)
(global-set-key [f6] 'ibuffer)
(global-set-key [f7] 'other-window)
(global-set-key [f8] 'advertised-undo)

(global-set-key [f9] 'save-buffer)
(global-set-key [f10] 'next-error)
(global-set-key [f11] 'compile)
(global-set-key [f12] 'grep)

(global-set-key [C-f1] 'compile)
(global-set-key [C-f2] 'grep)
(global-set-key [C-f3] 'next-error)
(global-set-key [C-f4] 'previous-error)

(global-set-key [C-f8] 'dired)

(global-set-key [C-f11] 'kill-compilation)

;; Keypad bindings
(global-set-key [up] "\C-p")
(global-set-key [down] "\C-n")
(global-set-key [left] "\C-b")
(global-set-key [right] "\C-f")
;(global-set-key [home] "\C-a")
(global-set-key [end] "\C-e")
(global-set-key [prior] "\M-v")
(global-set-key [next] "\C-v")
(global-set-key [C-up] "\M-\C-b")
(global-set-key [C-down] "\M-\C-f")
(global-set-key [C-left] "\M-b")
(global-set-key [C-right] "\M-f")
(global-set-key [C-home] "\M-<")
(global-set-key [C-end] "\M->")
(global-set-key [C-prior] "\M-<")
(global-set-key [C-next] "\M->")

(global-set-key [(shift up)]     '(lambda() (interactive) (other-window -1)))
(global-set-key [(shift down)]   '(lambda() (interactive) (other-window  1)))

(global-set-key (kbd "\e\ee") 'ecb-activate)
(global-set-key (kbd "\e\el") 'ecb-toggle-ecb-windows)
(global-set-key (kbd "\e\eg") 'gdb)
(global-set-key (kbd "\e\ei") 'erc)


;; Misc
(global-set-key [C-tab] "\C-q\t")   ; Control tab quotes a tab.
(setq backup-by-copying-when-mismatch t)

;; Treat 'y' or <CR> as yes, 'n' as no.
(fset 'yes-or-no-p 'y-or-n-p)
(define-key query-replace-map [return] 'act)
(define-key query-replace-map [?\C-m] 'act)

;; Load packages
;(require 'desktop)
(require 'tar-mode)
;(require 'ecb-autoloads)
;(require 'ecb)

;; Pretty diff mode
(autoload 'ediff-buffers "ediff" "Intelligent Emacs interface to diff" t)
(autoload 'ediff-files "ediff" "Intelligent Emacs interface to diff" t)
(autoload 'ediff-files-remote "ediff" "Intelligent Emacs interface to diff")

;; Markdown mode
;(require markdown-mode)
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(custom-set-variables
 '(markdown-command "/usr/bin/markdown2"))

(if first-time
    (setq auto-mode-alist
      (append '(("\\.cpp$" . c++-mode)
            ("\\.hpp$" . c++-mode)
            ("\\.lsp$" . lisp-mode)
            ("\\.scm$" . scheme-mode)
            ("\\.pl$" . perl-mode)
	    ("\\.py$" . python-mode)
	    ("\\.diff$" . diff-mode)
            ) auto-mode-alist)))

;; Auto font lock mode
(defvar font-lock-auto-mode-list
  (list 'c-mode 'c++-mode 'c++-c-mode 'emacs-lisp-mode
	'lisp-mode 'perl-mode 'scheme-mode 'python-mode 'diff-mode)
  "List of modes to always start in font-lock-mode")

(defvar font-lock-mode-keyword-alist
  '((c++-c-mode . c-font-lock-keywords)
    (perl-mode . perl-font-lock-keywords))
  "Associations between modes and keywords")

(defun font-lock-auto-mode-select ()
  "Automatically select font-lock-mode if the current major mode is in font-lock-auto-mode-list"
  (if (memq major-mode font-lock-auto-mode-list)
      (progn
    (font-lock-mode t))
    )
  )

(global-set-key [M-f1] 'font-lock-fontify-buffer)

;; New dabbrev stuff
;(require 'new-dabbrev)
(setq dabbrev-always-check-other-buffers t)
(setq dabbrev-abbrev-char-regexp "\\sw\\|\\s_")
(add-hook 'emacs-lisp-mode-hook
      '(lambda ()
         (set (make-local-variable 'dabbrev-case-fold-search) nil)
         (set (make-local-variable 'dabbrev-case-replace) nil)))
(add-hook 'c-mode-hook
      '(lambda ()
         (set (make-local-variable 'dabbrev-case-fold-search) nil)
         (set (make-local-variable 'dabbrev-case-replace) nil)))

(add-hook 'text-mode-hook
      '(lambda ()
         (set (make-local-variable 'dabbrev-case-fold-search) t)
         (set (make-local-variable 'dabbrev-case-replace) t)))

(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(c-set-offset 'substatement-open 0)
(c-set-offset 'case-label 2)
;; C++ mode...
(defun my-c++-mode-hook ()
;  (setq c++-default-style "bsd")
  (setq tab-width 4)
  (set-variable 'c-basic-offset 4)

  (define-key c++-mode-map "\C-m" 'reindent-then-newline-and-indent)
  (define-key c++-mode-map "\C-ce" 'c-comment-edit)
  (setq c++-auto-hungry-initial-state 'none)
  (setq c++-delete-function 'backward-delete-char)
  (setq c++-tab-always-indent t)
;  (setq c++-statement-block-intro-indent 0)
;  (setq c++-statement-cont-offset -2)
;  (setq c++-indent-level 8)
;  (setq c++-continued-statement-offset 0)
;  (setq c-brace-offset -2)
;  (setq c-continued-brace-offset -2)
;  (setq c++-label-offset 0))
;  (setq c++-empty-arglist-indent 2))
  (setq dabbrev-case-fold-search nil)
  (setq dabbrev-case-replace nil)
)
;; C mode
(defun my-c-mode-hook ()
  (setq tab-width 4)
  (define-key c-mode-map "\C-m" 'reindent-then-newline-and-indent)
  (define-key c-mode-map "\C-ce" 'c-comment-edit)
  (setq c-auto-hungry-initial-state 'none)
  (setq c-delete-function 'backward-delete-char)
  (setq c-tab-always-indent t)
  (setq c-indent-level 4)
  (setq c-continued-statement-offset 4)
  (setq c-brace-offset -4)
  (setq c-brace-list-open 0)
  (setq c-access-label -4)
  (setq c-argdecl-indent 0)
  (setq c-label-offset 0))

;; Perl mode
(defun my-perl-mode-hook ()
  (setq tab-width 4)
  (define-key c++-mode-map "\C-m" 'reindent-then-newline-and-indent)
  (setq perl-indent-level 4)
  (setq perl-continued-statement-offset 4))

;; Scheme mode...
(defun my-scheme-mode-hook ()
  (define-key scheme-mode-map "\C-m" 'reindent-then-newline-and-indent))

;; Emacs-Lisp mode...
(defun my-lisp-mode-hook ()
  (define-key lisp-mode-map "\C-m" 'reindent-then-newline-and-indent)
  (define-key lisp-mode-map "\C-i" 'lisp-indent-line)
  (define-key lisp-mode-map "\C-j" 'eval-print-last-sexp))

;; Add all of the hooks...
(add-hook 'c++-mode-hook 'my-c++-mode-hook)
(add-hook 'c-mode-hook 'my-c-mode-hook)
(add-hook 'scheme-mode-hook 'my-scheme-mode-hook)
(add-hook 'emacs-lisp-mode-hook 'my-lisp-mode-hook)
(add-hook 'lisp-mode-hook 'my-lisp-mode-hook)
(add-hook 'perl-mode-hook 'my-perl-mode-hook)

;; Complement to next-error
(defun previous-error (n)
  "Visit previous compilation error message and corresponding source code."
  (interactive "p")
  (next-error (- n)))

;; Misc...
(setq mark-even-if-inactive t)
(setq visible-bell nil)
(setq next-line-add-newlines nil)
(setq compile-command "make")
(setq suggest-key-bindings 2)
(put 'eval-expression 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(setq show-trailing-whitespace t)

;; Elisp archive searching
(autoload 'format-lisp-code-directory "lispdir" nil t)
(autoload 'lisp-dir-apropos "lispdir" nil t)
(autoload 'lisp-dir-retrieve "lispdir" nil t)
(autoload 'lisp-dir-verify "lispdir" nil t)

;; Font lock mode
(defun my-make-face (face color &optional bold)
  "Create a face from a color and optionally make it bold"
  (make-face face)
  (copy-face 'default face)
  (set-face-foreground face color)
  (if bold (make-face-bold face))
  )

(my-make-face 'blue "blue")
(my-make-face 'red "red")
(my-make-face 'green "dark green")
(setq font-lock-comment-face 'blue)
(setq font-lock-string-face 'bold)
(setq font-lock-type-face 'bold)
(setq font-lock-keyword-face 'bold)
(setq font-lock-function-name-face 'red)
(setq font-lock-doc-string-face 'green)
(add-hook 'find-file-hooks 'font-lock-auto-mode-select)

(setq baud-rate 1000000)
(global-set-key "\C-cmm" 'menu-bar-mode)
(global-set-key "\C-cms" 'scroll-bar-mode)
(global-set-key [backspace] 'backward-delete-char)

;(global-set-key [delete] 'delete-char)
;(standard-display-european t)
;(load-library "iso-transl")

;; ===== Set standard indent to 2 rather that 4 ====
(setq standard-indent 2)

;; Under UNIX
(if (not (equal system-type 'ms-dos))
    (progn
      (if first-time
      (server-start))))

;; Add any face changes here
(add-hook 'term-setup-hook 'my-term-setup-hook)
(defun my-term-setup-hook ()
  (if (eq window-system 'pc)
      (progn
  (set-face-background 'default "red")
    )))

;; Restore the "desktop" - do this as late as possible
;(if first-time
;    (progn
;      (desktop-load-default)
;      (desktop-read)))

;; Indicate that this file has been read at least once
(setq first-time nil)

;; No need to debug anything now
(setq debug-on-error nil)

;; All done
(message "All done, %s%s" (user-login-name) ".")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.41"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(put 'upcase-region 'disabled nil)

(put 'downcase-region 'disabled nil)
