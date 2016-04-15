(use-package rust-mode
  :config
  (use-package racer
    :config
    (add-hook 'rust-mode-hook #'racer-mode)
    (add-hook 'racer-mode-hook #'eldoc-mode)
    (use-package company
      :config
      (add-hook 'racer-mode-hook #'company-mode))))

(provide 'my-rust)
