(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ejs\\'" . web-mode))

(require 'my-indention)
(add-hook 'web-mode-hook 'my-set-local-no-tabs)

(add-hook 'web-mode-hook
          (lambda ()
            (setq web-mode-markup-indent-offset 2)
            (setq web-mode-code-indent-offset 2)
            (setq web-mode-css-indent-offset 2)
            (setq web-mode-indent-style 2)))


(require 'haml-mode)
(require 'json-mode)
(require 'js2-mode)
(require 'coffee-mode)
(require 'rainbow-mode)

(require 'tern)
(require 'company-tern)

(setq coffee-tab-width 2)

(add-hook 'js-mode-hook (lambda () (tern-mode t)))

(add-to-list 'company-backends 'company-tern)

(defun my-enable-rainbow-mode ()
  (rainbow-mode t))

(add-hook 'scss-mode-hook 'my-enable-rainbow-mode)
(add-hook 'css-mode-hook 'my-enable-rainbow-mode)
(add-hook 'web-mode-hook 'my-enable-rainbow-mode)

(provide 'my-web)
