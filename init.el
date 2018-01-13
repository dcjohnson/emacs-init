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

(defun colors ()
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

(defun bash ()
  (add-hook 'sh-mode-hook
	    (lambda ()
	      (setq indent-tabs-mode nil)
	      (setq sh-basic-offset 2)
	      (setq sh-indent-level 2))))

(defconst my-protobuf-style
  '((c-basic-offset . 4)
    (indent-tabs-mode . nil)))

(defun protobuf ()
  (add-hook 'protobuf-mode-hook
	    (lambda ()
 	      (c-add-style "protobuf-style" my-protobuf-style t))))

(defun proof ()
  (require 'proof-site "~/.emacs.d/lisp/PG/generic/proof-site"))

(defun ld ()
  (require 'ld-mode "~/.emacs.d/lisp/ld-mode/ld-mode.el"))

(defun coq ()
  (setq auto-mode-alist (cons '("\\.v$" . coq-mode) auto-mode-alist))
  (autoload 'coq-mode "gallina.el" "Major mode for editing Coq vernacular." t))

(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
		  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))

(proof)
(packages)
(global-autocomplete)
(go)
(haskell)
(colors)
(misc)
(javascript)
(ld)
(bash)
;; (protobuf)
