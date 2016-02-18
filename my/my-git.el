(use-package magit
  :config 
  (use-package evil-magit)
  (use-package evil-leader
    :config
    (evil-leader/set-key
      "g" 'magit-status)))

(provide 'my-git)
