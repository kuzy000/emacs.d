(use-package tex-site
  :ensure auctex)

(use-package company
  :config
  (use-package company-math
    :config
    (add-to-list 'company-backends 'company-math-symbols-latex)))

(provide 'my-latex)
