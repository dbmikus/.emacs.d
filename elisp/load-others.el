;; Loads other files within the ~/.emacs.d directory

;; Setting up loadpath for others-elisp directory
(add-to-list 'load-path (concat init-pwd "others-elisp/"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Haskell mode stuff
(load (concat init-pwd "others-elisp/haskell-mode/haskell-site-file"))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Scala mode stuff
(add-to-list 'load-path (concat init-pwd "others-elisp/scala-mode"))
(require 'scala-mode-auto)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Markdown mode
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (cons '("\\.md$" . markdown-mode) auto-mode-alist))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Graphviz stuff
(autoload 'graphviz-dot-mode "graphviz-dot-mode.el"
  "Major mode for editing Graphviz files" t)
(setq auto-mode-alist (cons '("\\.gv$" . graphviz-dot-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.dot$" . graphviz-dot-mode) auto-mode-alist))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; YAML stuff
(require 'yaml-mode)
(setq auto-mode-alist (cons '("\\.yml$" . yaml-mode)
    (cons '("\\.yaml$" . yaml-mode) auto-mode-alist)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autocompletion stuff
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
             (concat init-pwd "others-elisp/ac-dict"))
(ac-config-default)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helm stuff
;; (add-to-list 'load-path (concat init-pwd "others-elisp/helm"))
;; (require 'helm-config)
;; (global-set-key (kbd "C-c h") 'helm-mini)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IDO: Interactively DO things
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SML language stuff
(autoload 'sml-mode "sml-mode" "Major mode for editing SML." t)
(autoload 'run-sml "sml-proc" "Run an inferior SML process." t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; less-css
(require 'less-css-mode)
(setq auto-mode-alist (cons '("\\.less$" . less-css-mode)
    (cons '("\\.mss$" . less-css-mode) auto-mode-alist)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; XLE mode
(load-library "lfg-mode")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Better solarized color themes
;; (add-to-list 'load-path (concat init-pwd
;;                                 "others-elisp/"
;;                                 "emacs-color-theme-solarized-master/"))
