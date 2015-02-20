;; Customizing the Emacs environment.
;; Use this for Emacs interaction with system

;; Fixing Shift-up key combination
(if (equal "xterm-256color" (tty-type))
    (define-key input-decode-map "\e[1;2A" [S-up]))

;; We need this if we are on multiple terminals
(defadvice terminal-init-xterm (after select-shift-up activate)
    (define-key input-decode-map "\e[1;2A" [S-up]))

;; GNU Screen configuration and interoperability with Emacs
(defun terminal-init-screen ()
  "Terminal initialization function for screen-256color."
  (load "term/xterm")
  (xterm-register-default-colors)
  (tty-set-up-initial-frame-faces))


;; Package management
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (message "did package-intialize")
  (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                           ("marmalade" . "http://marmalade-repo.org/packages/")
                           ("melpa" . "http://melpa.milkbox.net/packages/")))
  )