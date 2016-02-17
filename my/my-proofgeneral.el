(use-package proof-site
  :load-path (lambda () (expand-file-name "ProofGeneral/generic" my-plugin-dir))
  :ensure nil
  :config
  (setq proof-splash-enable nil)

  (use-package coq
    :load-path (lambda () (expand-file-name "ProofGeneral/generic" my-plugin-dir))
    :ensure nil
    :mode ("\\.v\\'" . coq-mode))

  (use-package proof
    :load-path (lambda () (expand-file-name "ProofGeneral/generic" my-plugin-dir))
    :ensure nil
    :config

    (define-key proof-mode-map (kbd "M-p") 'proof-toolbar-undo)
    (define-key proof-mode-map (kbd "M-n") 'proof-toolbar-next)

    (use-package discover
      :config
      (discover-add-context-menu
       :context-menu '(proofgeneral
                       (actions
                        ("ProofGeneral"
                         ("a" "start ProofGeneral" proofgeneral)
                         ("g" "toolbar goto" proof-toolbar-goto))))
       :bind "C-;"
       :mode 'proof-mode
       :mode-hook 'proof-mode-hook))))

(provide 'my-proofgeneral)
