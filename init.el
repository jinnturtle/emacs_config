(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; local setup files
(add-to-list 'load-path "~/.emacs.d/custom")
(require 'setup-general)
(require 'setup-editing)
(require 'setup-helm)
(require 'setup-helm-gtags)


(require 'use-package)
(setq use-package-always-ensure t)

;; settings for funciton-args
(require 'function-args)
(fa-config-default)

;; auto-completion
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company-c-headers company function-args helm-projectile helm-gtags)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
