;; WindMove Installation:
;;
(windmove-default-keybindings)         ; shifted arrow keys
;;
;; or
;;
;;     (windmove-default-keybindings 'hyper)  ; etc.
;;
;; to use another modifier key.
;;
;; If you wish to enable wrap-around, also add a line like:
(setq windmove-wrap-around t)

(defun revert-all-buffers ()
  "Refreshes all open buffers from their respective files."
  (interactive)
  (dolist (buf (buffer-list))
    (with-current-buffer buf
      (when (and (buffer-file-name) (not (buffer-modified-p)))
        (revert-buffer t t t) )))
  (message "Refreshed open files.") )

(autoload 'dirtree "dirtree" "Add directory to tree view" t)
