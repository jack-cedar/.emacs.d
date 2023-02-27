(require 'jc-orgtools)

(use-package denote
  :defer t
  :custom
  (denote-directory "~/vault/nexus"))

(setq denote-prompts '(title subdirectory keywords))

(with-eval-after-load 'org-capture
  (add-to-list 'org-capture-templates
	       '("n" "Create New Note (Denote)" plain
		 (file denote-last-path)
		 #'denote-org-capture
		 :no-save t
		 :immediate-finish nil
		 :kill-buffer t
		 :jump-to-captured t)))

(use-package xeft
  :straight 
  (xeft :type git :host nil :repo "https://git.sr.ht/~casouri/xeft")
  :defer t
  :custom
  (xeft-directory "~/vault/nexus")
  (xeft-recursive t))

(provide 'jc-notetaking)
