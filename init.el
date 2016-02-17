
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
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
(require 'my-cmake)
(require 'my-c++)
(require 'my-lisp)
(require 'my-proofgeneral)
(require 'my-rails)
(require 'my-web)
(require 'my-rdbms)
