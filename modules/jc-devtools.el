(require 'pkg-managment)

(use-package rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(defmacro prog-modes (&rest modes)
  `(progn
	     ,@(mapcar (lambda (mode)
		       `(use-package ,mode :defer t)
		       ) modes )
	     (elpaca-wait) ))


(use-package magit :defer t)
(use-package vterm :defer t)




(require 'project)

(provide 'jc-devtools)
