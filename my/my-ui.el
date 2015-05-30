(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(setq inhibit-startup-message t)

(global-linum-mode 1)

(when (display-graphic-p)
  (set-face-font 'default "Meslo LG S-10"))

(load-theme 'qt-creator t)


(require 'neotree)
(global-set-key (kbd "<f5>") 'neotree-toggle)

(setq neo-theme 'arrow)
(setq neo-window-width 28)
(setq neo-hidden-files-regexp "^.+~$")

(provide 'my-ui)
