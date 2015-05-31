(require 'edbi)
(require 'edbi-sqlite)
(require 'edbi-minor-mode)
(require 'company-edbi)

(add-to-list 'company-backends 'company-edbi)
(add-hook 'sql-mode-hook 'edbi-minor-mode)

(provide 'my-rdbms)
