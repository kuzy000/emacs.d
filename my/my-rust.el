(use-package rust-mode
  :config
  (use-package racer
    :bind ("C-," . racer-find-definition)
    :config
    (add-hook 'rust-mode-hook #'racer-mode)
    (add-hook 'racer-mode-hook #'eldoc-mode)
    (setq racer-cmd "~/.cargo/bin/racer")
    (setq racer-rust-src-path "/usr/src/rust/src")

    ;; (define-key racer-mode-map (kbd "C-,") #'racer-find-definition)

    (use-package company
      :config
      (add-hook 'racer-mode-hook #'company-mode))))

(provide 'my-rust)
