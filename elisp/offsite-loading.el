;; A file to load anything outside of my ~/.emacs.d directory

(if (or (eq system-type 'gnu/linux) (eq system-type 'darwin))
    (if (file-exists-p "/usr/local/share/emacs/site-lisp/site-start.el")
        (load "/usr/local/share/emacs/site-lisp/site-start.el")
      '())
  '())
