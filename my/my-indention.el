(use-package smart-tabs-mode
  :config
  (setq-default tab-width 4)
  (smart-tabs-insinuate 'c 'c++ 'java 'javascript)

  (use-package evil
    :config
    (define-key evil-insert-state-map (kbd "<RET>") 'evil-ret-and-indent))

  (defun my-set-local-no-tabs ()
    (setq-local indent-tabs-mode nil))

  (add-hook 'clojure-mode-hook          'my-set-local-no-tabs)
  (add-hook 'cider-repl-mode-hook       'my-set-local-no-tabs)
  (add-hook 'emacs-lisp-mode-hook       'my-set-local-no-tabs)
  (add-hook 'eshell-mode-hook           'my-set-local-no-tabs)
  (add-hook 'ielm-mode-hook             'my-set-local-no-tabs)
  (add-hook 'lisp-mode-hook             'my-set-local-no-tabs)
  (add-hook 'lisp-interaction-mode-hook 'my-set-local-no-tabs)
  (add-hook 'scheme-mode-hook           'my-set-local-no-tabs)
  (add-hook 'lua-mode-hook              'my-set-local-no-tabs)
  (add-hook 'web-mode-hook              'my-set-local-no-tabs)

  (defun my-c++-style-setup ()
    (c-set-offset 'innamespace [0]))

  (add-hook 'c++-mode-hook 'my-c++-style-setup))

(provide 'my-indention)
