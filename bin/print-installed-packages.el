#!/usr/bin/emacs --script

(defun print-installed-packages ()
  (describe-variable package-activated-list))

(load-file "../init.el")
(print package-activated-list)
