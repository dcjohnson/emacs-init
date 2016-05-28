(require 'package)
(add-to-list 'package-archives '("melpa" . "http://www.melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(require 'go-autocomplete)
(require 'auto-complete-config)

(global-auto-complete-mode t)

(load-theme 'seti t)		

(add-hook 'go-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode t)
	    (setq tab-width 2)))
	    

(setq-default indent-tabs-mode nil)

