(use-package company
  :config
  (setq company-clang-arguments '("-std=c++11")))

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(use-package rtags
  :config
  (require 'company-rtags)
  (setq company-rtags-begin-after-member-access t)
  (use-package company
    :config
    (add-to-list 'company-backends 'company-rtags))

  (setq rtags-completions-enabled t)

  (use-package malinka
    :config
    (add-hook 'c-mode-common-hook 'malinka-mode))

  (use-package discover
    :config
    (discover-add-context-menu
     :context-menu '(rtags
                     (actions
                      ("RTags"
                       ("a" "find symbol" rtags-find-symbol)
                       ("b" "find references" rtags-find-references)
                       ("c" "diagnostics" rtags-diagnostics)
                       ("d" "find file" rtags-find-file)
                       ("e" "find virtuals at point" rtags-find-virtuals-at-point)
                       ("f" "fixit" rtags-fixit)
                       ("g" "imenu" rtags-imenu)
                       ("h" "preprocess file" rtags-preprocess-file)
                       ("i" "print cursor info" rtags-print-cursorinfo)
                       ("j" "print dependencies" rtags-print-dependencies)
                       ("k" "print enum value at point" rtags-print-enum-value-at-point)
                       ("l" "rename symbol" rtags-rename-symbol))
                      ("Others"
                       ("m" "auto insert" auto-insert))))
     :bind "C-;"
     :mode 'c++-mode
     :mode-hook 'c++-mode-hook))

  (define-key c++-mode-map (kbd "M-n") 'rtags-next-match)
  (define-key c++-mode-map (kbd "M-p") 'rtags-previous-match)

  (define-key c++-mode-map (kbd "M-h") 'rtags-location-stack-back)
  (define-key c++-mode-map (kbd "M-l") 'rtags-location-stack-forward)

  (define-key c++-mode-map (kbd "C-,") 'rtags-find-symbol-at-point))

(provide 'my-c++)
