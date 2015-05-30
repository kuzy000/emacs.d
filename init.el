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
    json-mode
    js2-mode
    coffee-mode
    tern
    company-tern
    rainbow-mode
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

(require 'my-utils)

