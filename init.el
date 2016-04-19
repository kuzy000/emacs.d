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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (auctex yasnippet yaml-mode web-mode use-package smart-tabs-mode robe rinari rainbow-mode rainbow-delimiters racer projectile-rails malinka linum-relative json-mode js2-mode ido-vertical-mode helm haml-mode flymake-ruby evil-magit evil-leader evil-commentary enh-ruby-mode edbi-sqlite edbi-minor-mode discover darcula-theme company-tern company-edbi company-c-headers coffee-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
