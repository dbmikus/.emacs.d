;; emacs.d/init.el
;; Sets up basic, general, and global settings, and the offshores loading
;; to other files

;; Common Lisp support
(require 'cl)

;; Timing emacs load
(defvar *emacs-load-start* (current-time))

;; Use init-pwd to make relative filepath declarations.
;; This way, it doesn't matter where the .emacs.d directory is
(defvar init-pwd (file-name-directory load-file-name))

;; Configuring file location for M-x customize*
(setq custom-file (concat init-pwd "elisp/emacs-custom.el"))
(load custom-file 'noerror)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Splits up the configuration into multiple files and loads all of them
(setq files-to-load
      '(
        load-others
        env
        tweaks
        style
        csharp
        org-mode-config
        offsite-loading
        wiki
        php-mode
        quack
        navigation
        ;; cedet
        ))

(defun load-config (f)
  (load (concat init-pwd "elisp/"
                    (symbol-name f)
                    ".el")))

(mapcar 'load-config files-to-load)


;; Setting files to require
(setq files-to-require
      '(
;        rst
        ))

(defun require-config (item)
  (require item))

(mapcar 'require-config files-to-require)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(message "=============================================")
(message "      Done loading Emacs init.el file"        )
(message "=============================================")
;; Printing how long it took to load
;; (message "My .emacs loaded in %ds" (destructuring-bind (hi lo ms) (current-time)
;;     (- (+ hi lo) (+ (first *emacs-load-start*) (second *emacs-load-start*)))))
(put 'upcase-region 'disabled nil)
