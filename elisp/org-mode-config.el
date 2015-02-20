;;Checkout the latest version of org mode, if I don't already have it.
(unless (file-exists-p (concat init-pwd "elisp/org-mode/"))
  (let ((default-directory (concat init-pwd "elisp/")))
    (shell-command "git clone git://repo.or.cz/org-mode.git")
    (shell-command "make -C org-mode/")
    (normal-top-level-add-subdirs-to-load-path)))
(add-to-list 'load-path (concat init-pwd "elisp/org-mode/lisp/"))
(add-to-list 'load-path (concat init-pwd "elisp/org-mode/contrib/lisp/"))
(require 'org-install)

;; Org-mode settings
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-font-lock-mode 1)
