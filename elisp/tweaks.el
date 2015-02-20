;; Shell mode
(setq ansi-color-names-vector ; better contrast colors
      ["black" "red4" "green4" "yellow4"
       "blue3" "magenta4" "cyan4" "white"])
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)


;; Set up unicode
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
; This is from a Japanese individual. I hope it works.
(setq buffer-file-coding-system 'utf-8)
; From Emacs wiki
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

;; Change yes or no prompt to y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; Setting up redo
    ; Actually set up redo

;; Use hippie-expand
(global-set-key (kbd "M-/") 'hippie-expand)

;; Turning on text highlighting
(transient-mark-mode 1)

;; Highlight connecting braces
(show-paren-mode 1)

;; Show line numbers
(line-number-mode nil)
(setq linum-format "%d ")

;; Deleting trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; keep backup files neatly out of the way in .~/
(setq backup-directory-alist '(("." . ".~")))

;; Allows the mini-buffer to shrink, as well
; (resize-mini-windows t)

;; Setting up Racket
(setq scheme-program-name "racket")

;; Setting up spelling application
(setq-default ispell-program-name "aspell")

;; Shift selection: hold shift and cursor movement selects in that movement
(setq shift-select-mode nil)

;; Enabling zen coding
(add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes
