;;; Package -- My Emacs configuration
;;; Commentary:
;; basic Emacs config
;;; Code:

;; Packages
(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Source config.org
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
