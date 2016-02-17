(use-package edbi
  :config
  (use-package edbi-sqlite)
  (use-package edbi-minor-mode
    :config
    (add-hook 'sql-mode-hook 'edbi-minor-mode))

  (use-package company
    :config
    (use-package company-edbi
      :config
      (add-to-list 'company-backends 'company-edbi))))

(provide 'my-rdbms)
