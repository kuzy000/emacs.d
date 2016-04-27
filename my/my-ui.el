(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)

(global-linum-mode 1)

(use-package darcula-theme
  :config
  (load-theme 'darcula t)
  (use-package rainbow-delimiters
    :config
    (set-face-attribute 'rainbow-delimiters-depth-1-face nil :weight 'bold)
    (set-face-attribute 'rainbow-delimiters-depth-2-face nil :weight 'bold)
    (set-face-attribute 'rainbow-delimiters-depth-3-face nil :weight 'bold)
    (set-face-attribute 'rainbow-delimiters-depth-4-face nil :weight 'bold)
    (set-face-attribute 'rainbow-delimiters-depth-5-face nil :weight 'bold)
    (set-face-attribute 'rainbow-delimiters-depth-6-face nil :weight 'bold)
    (set-face-attribute 'rainbow-delimiters-depth-7-face nil :weight 'bold)
    (set-face-attribute 'rainbow-delimiters-depth-8-face nil :weight 'bold)
    (set-face-attribute 'rainbow-delimiters-depth-9-face nil :weight 'bold)
    (set-face-attribute 'rainbow-delimiters-unmatched-face nil :weight 'bold)))


(add-to-list 'default-frame-alist '(font . "Meslo LG S-10"))

(setq mouse-wheel-scroll-amount '(3 ((shift) . 3)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)

(provide 'my-ui)
