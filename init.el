;;; Package -- My Emacs configuration
;;; Commentary:
;; basic Emacs config
;;; Code:

;; Remove things
(setq inhibit-startup-message t)
;; Menus
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
;; Cursor
(blink-cursor-mode 0)

;; Line numbers
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(require 'org-tempo)

;; Font
(setq line-spacing 0)
(set-frame-font "Dina:pixelsize=10" nil t)
(add-to-list 'default-frame-alist '(font . "Dina:pixelsize=10"))

;; Backup dir
(setq backup-directory-alist '(("." . "~/.cache/emacs")))

;; Tabsize
(setq-default tab-width 4)

;; ido mode
;;(progn
  ;;(require 'ido)
 ;; (ido-mode 1)

 ;; (progn (make-local-variable 'ido-decorations)
;;	 (setf (nth 2 ido-decorations) "\n"))

 ;; (setq ido-enable-flex-matching t)
 ;; (setq ido-default-file-method 'select-window)
 ;; (setq ido-default-buffer-method 'select-window))
	   

;; Packages
(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

(use-package ace-window
  :ensure t
  :bind (("C-x o" . ace-window)))

(use-package acme-theme
  :ensure t
  :config (load-theme 'acme t))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package haskell-mode
  :ensure t)

(use-package ivy
  :ensure t
  :config
  (progn
	(ivy-mode 1)
	(setq ivy-use-virtual-buffers t)
	(setq enable-recursive-minibuffers t)
	(setq ivy-re-builders-alist
		  '((t . ivy--regex-fuzzy)))))

(use-package swiper
  :ensure t
  :bind ("C-s" . 'swiper))

(use-package rainbow-mode
  :ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(rainbow-mode swiper ivy telega haskell-mode which-key use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
