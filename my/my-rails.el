(require 'flymake-ruby)
(require 'robe)
(require 'rinari)
(require 'yaml-mode)

(setq projectile-rails-discover-bind "C-;")
(require 'projectile-rails)

(add-hook 'projectile-mode-hook 'projectile-rails-on)

(add-to-list 'auto-mode-alist '("Rakefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rxml\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rjs\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.irbrc\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.pryrc\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.builder\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))

(add-hook 'enh-ruby-mode-hook 'flymake-ruby-load)
(add-hook 'enh-ruby-mode-hook 'projectile-rails-on)
(add-hook 'enh-ruby-mode-hook 'robe-mode)

(require 'my-indention)
(add-hook 'enh-ruby-mode-hook 'my-set-local-no-tabs)

(eval-after-load 'company
  '(push 'company-robe company-backends))

(define-key ruby-mode-map (kbd "C-,") 'robe-jump)

(setq robe-turn-on-eldoc nil)

;(discover-add-context-menu
 ;:context-menu '(rinari
                 ;(actions
                  ;("Rinari"
                   ;("c" "Console" rinari-console)
                   ;("d" "Cap" rinari-cap)
                   ;("e" "Insert ERB skeleton" rinari-insert-erb-skeleton)
                   ;("g" "RGrep" rinari-rgrep)
                   ;("p" "Goto partial" rinari-goto-partial)
                   ;("q" "Sql" rinari-sql)
                   ;("r" "Rake" rinari-rake)
                   ;("s" "Script" rinari-script)
                   ;("t" "Test" rinari-test)
                   ;("w" "Web server" rinari-web-server)
                   ;("x" "Extract partial" rinari-extract-partial))
                  ;("Rinari Find"
                   ;(";" "By Context" rinari-find-by-context)
                   ;("fC" "Cells" rinari-find-cells)
                   ;("fF" "Features" rinari-find-features)
                   ;("fM" "Mailer" rinari-find-mailer)
                   ;("fS" "Steps" rinari-find-steps)
                   ;("fY" "Sass" rinari-find-sass)
                   ;("fa" "Application" rinari-find-application)
                   ;("fc" "Controller" rinari-find-controller)
                   ;("fe" "Environment" rinari-find-environment)
                   ;("ff" "File-in-project" rinari-find-file-in-project)
                   ;("fh" "Helper" rinari-find-helper)
                   ;("fi" "Migration" rinari-find-migration)
                   ;("fj" "Javascript" rinari-find-javascript)
                   ;("fl" "Lib" rinari-find-lib)
                   ;("fm" "Model" rinari-find-model)
                   ;("fn" "Configuration" rinari-find-configuration)
                   ;("fo" "Log" rinari-find-log)
                   ;("fp" "Public" rinari-find-public)
                   ;("fr" "Rspec" rinari-find-rspec)
                   ;("fs" "Script" rinari-find-script)
                   ;("ft" "Test" rinari-find-test)
                   ;("fu" "Plugin" rinari-find-plugin)
                   ;("fv" "View" rinari-find-view)
                   ;("fw" "Worker" rinari-find-worker)
                   ;("fx" "Fixture" rinari-find-fixture)
                   ;("fy" "Stylesheet" rinari-find-stylesheet)
                   ;("fz" "Rspec-fixture" rinari-find-rspec-fixture))))
 ;:bind "C-;"
 ;:mode 'projectile-rails-mode
 ;:mode-hook 'projectile-rails-mode-hook
 ;)


(provide 'my-rails)
