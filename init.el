(when (eq system-type 'darwin) 
  (customize-set-variable 'native-comp-driver-options '("-Wl,-w")))

(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror 'nomessage)

