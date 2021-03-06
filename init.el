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

(require 'my-use-package)
(require 'my-ui)
(require 'my-general)
(require 'my-evil)
(require 'my-whitespace)
(require 'my-indention)
(require 'my-completion)
(require 'my-git)
(require 'my-cmake)
(require 'my-c++)
(require 'my-lisp)
(require 'my-proofgeneral)
(require 'my-rails)
(require 'my-web)
(require 'my-rdbms)
(require 'my-rust)
(require 'my-latex)
(require 'my-glsl)
(require 'my-haskell)
