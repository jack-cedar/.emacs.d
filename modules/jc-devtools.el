(require 'pkg-managment)



(dolist (mode '( haskell-mode
		 rust-mode
		 zig-mode
		 nim-mode
		 csharp-mode
		 go-mode))
  (straight-use-package mode))
;;(custom-set-variables '(haskell-process-type 'stack-ghci))





(use-package rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(use-package magit :defer t)



(provide 'jc-devtools)
