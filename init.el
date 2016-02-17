(package-initialize)

(defvar my-init-dir (file-name-directory load-file-name))
(defvar my-dir (expand-file-name "my" my-init-dir))
(defvar my-plugin-dir (expand-file-name "plugin" my-init-dir))

(add-to-list 'load-path my-dir)

(dolist (i (directory-files my-plugin-dir))
  (let ((name (concat my-plugin-dir "/" i)))
    (when (and (file-directory-p name)
               (not (equal i ".."))
               (not (equal i ".")))
      (add-to-list 'load-path name))))

(defvar my-packages-list
  '(undo-tree
    rainbow-delimiters
    darcula-theme
    evil
    evil-matchit
    evil-args
    evil-commentary
    linum-relative
    projectile
    whitespace
    company
    rtags
    flycheck
    smart-tabs-mode
    neotree
    malinka
    wacspace
    discover
    cmake-font-lock
    company-c-headers
    yasnippet
    ido-vertical-mode
    auctex
    lua-mode
    flymake-ruby
    inf-ruby
    projectile-rails
    robe
    rvm
    rinari
    web-mode
    yaml-mode
    haml-mode
    json-mode
    js2-mode
    coffee-mode
    jade-mode
    tern
    company-tern
    rainbow-mode
    edbi
    edbi-sqlite
    edbi-minor-mode
    company-edbi
    glsl-mode
    evil-org
    cycbuf))

(require 'my-packages)
(require 'my-ui)
(require 'my-general)
(require 'my-evil)
(require 'my-buffers)
(require 'my-whitespace)
(require 'my-indention)
(require 'my-completion)
(require 'my-cmake)
(require 'my-c++)
(require 'my-lisp)
(require 'my-proofgeneral)
(require 'my-rails)
(require 'my-web)
(require 'my-rdbms)

(require 'my-utils)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(evil-org yasnippet yaml-mode web-mode wacspace vi-tilde-fringe swbuff smart-tabs-mode rvm robe rinari rainbow-mode rainbow-delimiters projectile-rails php-mode php+-mode nlinum neotree names malinka lua-mode linum-relative json-mode js2-mode jade-mode ido-vertical-mode ido-ubiquitous helm-projectile helm-company haml-mode glsl-mode flymake-ruby flycheck evil-matchit evil-commentary evil-args enh-ruby-mode edbi-sqlite edbi-minor-mode discover darcula-theme cycbuf company-tern company-irony company-edbi company-c-headers color-theme-sanityinc-tomorrow coffee-mode cmake-font-lock buffer-stack autopair auctex aggressive-indent ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
