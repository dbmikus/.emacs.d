;; Adding my elisp code directory to the loadpath
(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'load-path "~/.emacs.d/elisp/CsharpToolsForEmacs/")

;; Adds subdirectories
; (let ((default-directory "~/.emacs.d/elisp/"))
;  (normal-top-level-add-subdirs-to-load-path))
; (normal-top-level-add-subdirs-to-load-path)

;; Setting up c-sharp mode
(autoload 'csharp-mode "csharp-mode" "Majore mode for editing C# code." t)

(setq auto-mode-alist
      (append '(("\\.cs$" . chsarp-mode)) auto-mode-alist))
(defun my-csharp-mode-fn ()
  "function that runs when csharp-mode is initialized for a buffer."
  ...insert you code here...
  ...most commonly, your custom key bindings...
)
(add-hook 'csharp-mode-hook 'my-csharp-mode-fn t)