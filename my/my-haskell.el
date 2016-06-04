(use-package haskell-mode
  :config
  (use-package hindent
    :config
    (add-hook 'haskell-mode-hook #'hindent-mode))
  
  (let ((my-cabal-path (expand-file-name "~/.cabal/bin")))
    (setenv "PATH" (concat my-cabal-path path-separator (getenv "PATH")))
    (add-to-list 'exec-path my-cabal-path))
  (setq haskell-tags-on-save t)
  )

(provide 'my-haskell)
