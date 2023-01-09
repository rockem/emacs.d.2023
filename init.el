(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

