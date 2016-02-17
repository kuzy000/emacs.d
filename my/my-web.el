(use-package web-mode
  :mode "\\.html?\\'"
  :mode "\\.phtml\\'"
  :mode "\\.tpl\\.php\\'"
  :mode "\\.[agj]sp\\'"
  :mode "\\.as[cp]x\\'"
  :mode "\\.erb\\'"
  :mode "\\.mustache\\'"
  :mode "\\.djhtml\\'"
  :mode "\\.ejs\\'"

  :config
  (use-package my-indention
    :config
    (add-hook 'web-mode-hook 'my-set-local-no-tabs))

  (add-hook 'web-mode-hook
            (lambda ()
              (setq web-mode-markup-indent-offset 2)
              (setq web-mode-code-indent-offset 2)
              (setq web-mode-css-indent-offset 2)
              (setq web-mode-indent-style 2))))

(use-package haml-mode)
(use-package json-mode)
(use-package js2-mode)

(use-package tern
  :config
  (add-hook 'js-mode-hook (lambda () (tern-mode t)))
  (use-package company
    :config
    (use-package company-tern
      :config
      (add-to-list 'company-backends 'company-tern))))

(use-package coffee-mode
  :config
  (setq coffee-tab-width 2))


(use-package rainbow-mode
  :config
  (defun my-enable-rainbow-mode ()
    (rainbow-mode t))

  (add-hook 'scss-mode-hook 'my-enable-rainbow-mode)
  (add-hook 'css-mode-hook 'my-enable-rainbow-mode)
  (add-hook 'web-mode-hook 'my-enable-rainbow-mode))

(provide 'my-web)
