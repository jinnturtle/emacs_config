(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

(load-theme 'monokai t)

(set-face-attribute 'default nil :family "Mononoki")

(global-display-line-numbers-mode)
(column-number-mode)
(global-display-fill-column-indicator-mode)
(setq-default fill-column 80)

(setq gc-cons-threshold 10000000)

;; show trailing whitespace (e.g. can mess up diffs, etc)
(add-hook 'prog-mode-hook
	  (lambda () (interactive)
	    (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)

;; how many spaces is tab represented with
(setq-default tab-width 4)

(provide 'setup-general)
