;; General utility functions that should be available in my other elisp files.
;; If this gets too large, refactor into separate files as appropriate.

(defun force-kill-buffer ()
   "Kill current buffer unconditionally."
   (interactive)
   (let ((buffer-modified-p nil))
     (kill-buffer (current-buffer))))

(defun eval-file (file)
  "Loads the given file and evaluates its last sexp."
  (if (file-exists-p file)
      (progn
        (find-file file)
        (end-of-buffer)
        (let ((evaled-sexp (eval-last-sexp nil)))
          (progn
            (force-kill-buffer)
            evaled-sexp)))
    nil))
