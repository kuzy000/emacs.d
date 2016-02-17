(setq gc-cons-threshold 20000000)

; (use-package helm-config)
(use-package helm)
(use-package ido
  :config
  (ido-mode t)
  (use-package ido-vertical-mode
    :config
    (ido-vertical-mode t)))

(use-package projectile
  :config
  (projectile-global-mode))


(use-package electric
  :config
  (electric-pair-mode t))

(use-package yasnippet
  :config
  (yas-global-mode t))

(provide 'my-general)
