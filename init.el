(defun packages ()
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://www.melpa.org/packages/"))
  (when (< emacs-major-version 24)
    (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
  (package-initialize))

(defun global-autocomplete ()
  (require 'auto-complete-config)
  (global-auto-complete-mode t))

(defun go ()
  (require 'go-autocomplete)
  (add-hook 'go-mode-hook
	    (lambda ()
	      (setq indent-tabs-mode t)
	      (setq tab-width 2))))

(defun haskell ()
  (require 'haskell-mode))

(defun colors()
  (load-theme 'inverse-acme t))

(defun automodes ()
  (add-to-list 'auto-mode-alist '("\\.asm\\'" . text-mode)))

(defun misc ()
  (setq inhibit-startup-screen t))

(defun javascript ()
  (add-hook 'js-mode-hook
	    (lambda ()
	      (setq tab-width 2)
	      (setq js-indent-level 2))))
  
(packages)
(global-autocomplete)
(go)
(haskell)
(colors)
(automodes)
(misc)
(javascript)

(set-default-font "Go Mono")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d320493111089afba1563bc3962d8ea1117dd2b3abb189aeebdc8c51b5517ddb" default)))
 '(js-indent-level 2)
 '(package-selected-packages
   (quote
    (protobuf-mode speck rust-mode groovy-mode go-mode csharp-mode yaml-mode sml-mode seti-theme markdown-mode magit let-alist julia-mode haskell-mode go-autocomplete flyspell-correct-popup docker distinguished-theme atom-one-dark-theme 2048-game))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
