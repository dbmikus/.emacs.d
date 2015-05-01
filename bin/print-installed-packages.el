#!/usr/bin/emacs --script

;; TODO I should move all of the print-installed-packages.sh stuff into here

(defun print-installed-packages ()
  (describe-variable package-activated-list))

(defvar cur-dir (file-name-directory load-file-name))
(load-file (concat cur-dir "../init.el"))
(print package-activated-list)
