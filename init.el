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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#000000" "#880000" "#005500" "#663311" "#004488" "#770077" "#007777" "#eeeecc"])
 '(custom-safe-themes
   '("3433a30aa4ecd3ba38314cec0b473b8a55ec00d43c1b700a0caeef1b5ac3bc19" "387b487737860e18cbb92d83a42616a67c1edfd0664d521940e7fbf049c315ae" default))
 '(org-drill-done-count-color "#663311")
 '(org-drill-failed-count-color "#880000")
 '(org-drill-mature-count-color "#005500")
 '(org-drill-new-count-color "#004488")
 '(package-selected-packages
   '(speed-type company-ghci lua-mode evil dashboard flycheck-haskell smex ido-vertical-mode sh-mode which-key use-package telega swiper rainbow-mode haskell-mode flycheck auto-complete acme-theme ace-window))
 '(pdf-view-midnight-colors '("#000000" . "#ffffea")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
