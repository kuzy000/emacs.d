(require 'evil)
(require 'linum-relative)
(require 'evil-args)
(require 'evil-commentary)

(evil-mode 1)
(evil-commentary-mode)

(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-insert-state-map (kbd "C-u")
            (lambda ()
              (interactive)
              (evil-delete (point-at-bol) (point))))


(define-key evil-normal-state-map (kbd "gp") 'projectile-find-file)

(defun my-ido-define-keys ()
  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))

(add-hook 'ido-setup-hook 'my-ido-define-keys)

(require 'discover)

(evil-set-initial-state 'makey-key-mode 'emacs)

(provide 'my-evil)
