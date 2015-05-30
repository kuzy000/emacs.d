(require 'company)

(define-key company-active-map (kbd "C-n") 'company-select-next-or-abort)
(define-key company-active-map (kbd "C-p") 'company-select-previous-or-abort)

(define-key evil-insert-state-map (kbd "C-n") 'company-manual-begin)
(define-key evil-insert-state-map (kbd "C-p") 'company-manual-begin)

(add-to-list 'company-backends 'company-c-headers)

(require 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/c++/4.9/")

(add-hook 'after-init-hook 'global-company-mode)

(setq company-require-match nil)

(provide 'my-completion)
