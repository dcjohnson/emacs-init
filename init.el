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

(defun javascript ()
  (add-hook 'js-mode-hook
	    (lambda ()
	      (setq tab-width 2)
	      (setq js-indent-level 2))))

(defun what-face (pos)
  (interactive  "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
		  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))

(defun proof ()
  (require 'proof-site "~/.emacs.d/lisp/PG/generic/proof-site"))

(defun bash ()
  (add-hook 'sh-mode-hook
	    (lambda ()
	      (setq indent-tabs-mode nil)
	      (setq sh-basic-offset 2)
	      (setq sh-indent-level 2))))

(packages)
(proof)
;; (global-autocomplete)
;; (go)
;; (haskell)
(colors)
(javascript)
(bash)
