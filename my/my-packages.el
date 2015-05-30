(require 'cl)
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(setq package-user-dir (expand-file-name "elpa" my-init-dir))
(package-initialize)

(defun my-packages-installed-p ()
  (every #'package-installed-p my-packages-list))

(defun my-install-packages ()
  (unless (my-packages-installed-p)
    (package-refresh-contents)
    (cl-loop for p in my-packages-list
             unless (package-installed-p p)
             do (package-install p))))

(my-install-packages)

(provide 'my-packages)
