(use-package evil
  :config 
  (evil-mode t)
  (use-package evil-commentary
    :config
    (evil-commentary-mode))

  (use-package ido
    :init
    (defun my-ido-define-keys ()
      (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
      (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))

    (add-hook 'ido-setup-hook 'my-ido-define-keys))

  (use-package makey
    :config
    (evil-set-initial-state 'makey-key-mode 'emacs))

  (defun my-minibuffer-keyboard-quit ()
    "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
    (interactive)
    (if (and delete-selection-mode transient-mark-mode mark-active)
        (setq deactivate-mark  t)
      (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
      (abort-recursive-edit)))

  (define-key evil-normal-state-map [escape] 'keyboard-quit)
  (define-key evil-visual-state-map [escape] 'keyboard-quit)
  (define-key minibuffer-local-map [escape] 'my-minibuffer-keyboard-quit)
  (define-key minibuffer-local-ns-map [escape] 'my-minibuffer-keyboard-quit)
  (define-key minibuffer-local-completion-map [escape] 'my-minibuffer-keyboard-quit)
  (define-key minibuffer-local-must-match-map [escape] 'my-minibuffer-keyboard-quit)
  (define-key minibuffer-local-isearch-map [escape] 'my-minibuffer-keyboard-quit)
  (global-set-key [escape] 'evil-exit-emacs-state)

  (define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
  (define-key evil-visual-state-map (kbd "C-u") 'evil-scroll-up)
  (define-key evil-insert-state-map (kbd "C-u")
    (lambda ()
      (interactive)
      (evil-delete (point-at-bol) (point))))

  (define-key evil-normal-state-map (kbd "gb") 'projectile-find-file)
  (define-key evil-normal-state-map (kbd "gp") 'projectile-switch-project)
  (define-key evil-normal-state-map (kbd "gj") 'ido-switch-buffer))

(use-package linum-relative
  :config
  (linum-relative-on))

(provide 'my-evil)
