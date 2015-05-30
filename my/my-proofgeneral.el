(load-file (expand-file-name "ProofGeneral/generic/proof-site.el" my-plugin-dir))

(require 'proof)

(define-key proof-mode-map (kbd "M-p") 'proof-toolbar-undo)
(define-key proof-mode-map (kbd "M-n") 'proof-toolbar-next)

(discover-add-context-menu
 :context-menu '(proofgeneral
                 (actions
                  ("ProofGeneral"
                   ("a" "start ProofGeneral" proofgeneral)
                   ("g" "toolbar goto" proof-toolbar-goto))))
 :bind "C-;"
 :mode 'proof-mode
 :mode-hook 'proof-mode-hook
 )

(provide 'my-proofgeneral)

