(use-package rinari)
(use-package yaml-mode)

(use-package projectile-rails
  :init
  (setq projectile-rails-discover-bind "C-;"))

(add-hook 'projectile-mode-hook 'projectile-rails-on)

(use-package ruby-mode
  :mode "Rakefile\\'"
  :mode "\\.rake\\'"
  :mode "\\.rxml\\'"
  :mode "\\.rjs\\'"
  :mode "\\.irbrc\\'"
  :mode "\\.pryrc\\'"
  :mode "\\.builder\\'"
  :mode "\\.ru\\'"
  :mode "\\.gemspec\\'"
  :mode "Gemfile\\'")

(use-package enh-ruby-mode
  :config
  (use-package flymake
    :config
    (use-package flymake-ruby
      :config
      (add-hook 'enh-ruby-mode-hook 'flymake-ruby-load)))
  (use-package projectile-rails
    :config
    (add-hook 'enh-ruby-mode-hook 'projectile-rails-on))
  (use-package robe
    :config
    (add-hook 'enh-ruby-mode-hook 'robe-mode))
  (add-hook 'enh-ruby-mode-hook 'my-set-local-no-tabs))

(use-package company
  :config
  (use-package robe
    :config
    '(push 'company-robe company-backends)))

(use-package robe
  :config
  (define-key ruby-mode-map (kbd "C-,") 'robe-jump)
  (setq robe-turn-on-eldoc nil))

(provide 'my-rails)
