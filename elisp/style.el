;; A file that configures styles for modes and languages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (eval-after-load "color-theme"
;;   '(progn
;;      (color-theme-initialize)
;; ;     (load-theme 'zenburn)
;;      (color-theme-hober)
;; ;     (color-theme-standard)
;; ;     (color-theme-clarity)
;; ;     (color-theme-euphoria)
;;     ))
; Cool themes
; clarity
; euphoria
(require 'color-theme)
(require 'color-theme-solarized)
(color-theme-initialize)
(color-theme-solarized)
;; set dark theme
;; (color-theme-solarized-dark)
;; set light theme
;; (color-theme-solarized-light)

(set-default-font "Inconsolata 13")
(add-to-list 'default-frame-alist
             '(font . "Inconsolata 13"))

; Setting the text prompt color for minibuffer
; (set-face-foreground 'minibuffer-prompt "#0087ff")

;; Configuring C-mode
(defun my-c-mode-hook ()
  (c-set-style "bsd")
  (setq c-basic-offset 4
        c-indent-level 4
        c-default-style "bsd"))

(add-hook 'c-mode-common-hook 'my-c-mode-hook)

;; Change the level of indentation for <TAB>
(setq-default tab-width 4)
;; When loaded again, makes <TAB> insert 4 spaces instead of smart-indent
;; (setq indent-line-function 'insert-tab)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SML styling
(defun my-sml-mode-hook () "Local defaults for SML mode"
  (setq sml-indent-level 2)      ; conserve on horizontal space
  (setq words-include-escape t)  ; \ loses word break status
  (setq indent-tabs-mode nil))   ; never ever indent with tabs
(add-hook 'sml-mode-hook 'my-sml-mode-hook)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Web-Mode styling
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
