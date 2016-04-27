(use-package rainbow-delimiters
  :config
  (add-hook 'clojure-mode-hook          'rainbow-delimiters-mode)
  (add-hook 'emacs-lisp-mode-hook       'rainbow-delimiters-mode)
  (add-hook 'ielm-mode-hook             'rainbow-delimiters-mode)
  (add-hook 'lisp-mode-hook             'rainbow-delimiters-mode)
  (add-hook 'lisp-interaction-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'scheme-mode-hook           'rainbow-delimiters-mode)
  (add-hook 'cider-repl-mode-hook       'rainbow-delimiters-mode)
  (add-hook 'eshell-mode-hook           'rainbow-delimiters-mode))

(provide 'my-lisp)
