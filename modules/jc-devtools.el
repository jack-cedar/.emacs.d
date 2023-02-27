(require 'pkg-managment)

(use-package rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(use-package magit :defer t)
(use-package vterm)
(use-package cider)
(require 'project)

(provide 'jc-devtools)
