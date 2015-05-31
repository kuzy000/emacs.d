
;(require 'cycbuf)
;
;(setq cycbuf-dont-show-regexp '("^ "
;                                "^\\*cycbuf\\*$"
;                                "^\\*Completions\\*$"))
;
;(define-key evil-normal-state-map (kbd "C-j") 'cycbuf-switch-to-next-buffer)
;(define-key evil-normal-state-map (kbd "C-k") 'cycbuf-switch-to-previous-buffer)
;
;(setq cycbuf-clear-delay 60)
;(setq cycbuf-buffer-sort-function 'cycbuf-sort-by-recency)
;(setq cycbuf-file-name-replacements `((,(expand-file-name "~") "~")))
;
;(setq cycbuf-max-window-height 20)
;
;(defun cycbuf-show-header () nil)
;(setq cycbuf-header-lines-length 0)
;
;(setq cycbuf-attributes-list 
;      '(("M"         1                      left cycbuf-get-modified-string)
;        ("R"         2                      left cycbuf-get-readonly-string)
;        ("Buffer"    cycbuf-get-name-length left cycbuf-get-name)
;        (""          10                     left " ")
;        ("Mode"      12                     left cycbuf-get-mode-name)
;        (""          1                      left " ")
;        ("Directory" cycbuf-get-file-length left cycbuf-get-file-name)
;        (""          2                      left " ")))

;(require 'helm-config)
;(require 'helm-buffers)
;
;(setq helm-exit-idle-delay 0)
;(setq helm-buffers-fuzzy-matching t)
;(setq helm-buffers-ido-virtual-map t)


;(defvar my-cycling-var 0)
;
;(defvar my-transient-map
;  (let ((map (make-sparse-keymap)))
;    (define-key map (kbd "C-j") 'helm-next-line)
;    (define-key map (kbd "C-k") 'helm-previous-line)
;    (define-key map (kbd "i") 'my-insert-command)
;    map))
;
;(defun my-end-repeatable ()
;  (helm-maybe-exit-minibuffer))
;
;(defun my-insert-command ()
;  (interactive))
;
;(defun my-cycling-command ()
;  (interactive)
;  (set-transient-map my-transient-map 'my-keep-keymap)
;  (helm-buffers-list))
;
;(defun my-keep-keymap ()
;  (let* ((key (this-command-keys))
;         (binding (lookup-key my-transient-map key)))
;    (unless binding
;      (my-end-repeatable))
;    (unless (equalp binding 'my-insert-command)
;      binding)))
;
;(define-key evil-normal-state-map (kbd "C-j") 'my-cycling-command)


(provide 'my-buffers)
