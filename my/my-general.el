(require 'helm-config)
(require 'ido)
(require 'ido-vertical-mode)

(setq gc-cons-threshold 20000000)

(ido-mode t)
(ido-vertical-mode t)
(projectile-global-mode)

(electric-pair-mode t)

(require 'yasnippet)
(yas-global-mode t)


(provide 'my-general)
