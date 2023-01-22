;; Eliminate warning when compiling elisp packages
(when (eq system-type 'darwin) 
  (customize-set-variable 'native-comp-driver-options '("-Wl,-w")))

;; Make gc pauses faster by decreasing the threshold.
(setq gc-cons-threshold (* 50 1000 1000))

;; Set custom emacs configuratioj go to a separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror 'nomessage)

;; Read main org configuration file
(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))


