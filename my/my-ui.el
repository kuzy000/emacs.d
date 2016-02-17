(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(setq inhibit-startup-message t)

(global-linum-mode 1)

(use-package darcula-theme)
(load-theme 'darcula t)

(when (display-graphic-p)
  (set-face-font 'default "Meslo LG S-10"))

(setq mouse-wheel-scroll-amount '(3 ((shift) . 3)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)

(provide 'my-ui)
