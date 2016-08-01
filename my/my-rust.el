(use-package rust-mode
  :config
  (use-package cargo
    :config
    (add-hook 'rust-mode-hook #'cargo-minor-mode)

    (use-package discover
      :config
      (discover-add-context-menu
       :context-menu '(cargo
                       (actions
                        ("Build and run"
                         ("z" "Run the benchmarks" cargo-process-bench)
                         ("b" "Compile the current project" cargo-process-build)
                         ("c" "Remove the target directory" cargo-process-clean)
                         ("d" "Build this project's and its dependencies' documentation" cargo-process-doc)
                         ;; ("a" "Create a new cargo project" cargo-process-new)
                         ;; ("a" "Create a new cargo project inside an existing directory" cargo-process-init)
                         ("r" "Build and execute src/main.rs" cargo-process-run)
                         ("e" "Build and execute with --example <name>" cargo-process-run-example))

                        ("Crates"
                         ("s" "Search registry for crates" cargo-process-search)
                         ("u" "Update dependencies listed in Cargo.lock" cargo-process-update))

                        ("Tests"
                         ("t" "Run all unit tests" cargo-process-test)
                         ("T" "Run the current unit test" cargo-process-current-test)
                         ("f" "Run the current file unit tests" cargo-process-current-file-tests)))

                       ("Others"
                         ("l" "Run the last cargo-process command" cargo-process-repeat)))
       :bind "C-;"
       :mode 'cargo-minor-mode
       :mode-hook 'cargo-minor-mode-hook)))
  (use-package racer
    :bind ("C-," . racer-find-definition)
    :init 
    (setq racer-cmd "~/.cargo/bin/racer")
    (setq racer-rust-src-path "/usr/src/rust/src")

    :config
    ;; (add-hook 'rust-mode-hook #'racer-mode)
    (add-hook 'racer-mode-hook #'eldoc-mode)

    ;; (define-key racer-mode-map (kbd "C-,") #'racer-find-definition)

    (use-package company
      :config
      (add-hook 'racer-mode-hook #'company-mode)))

  (add-hook 'rust-mode-hook #'racer-mode)

  (use-package flycheck
    :config
    (use-package flycheck-rust
      :config
      (add-hook 'rust-mode-hook #'flycheck-mode)
      (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))))

(provide 'my-rust)
