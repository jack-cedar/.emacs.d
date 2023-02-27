(use-package org
  :defer t)
(require 'org-tempo)
(use-package org-modern
  :defer t)
(global-org-modern-mode)

(setq org-babel-lisp-eval-fn #'sly-eval)
(setq haskell-process-type  'stack-ghci)
(setq org-confirm-babel-evaluate nil)


 (org-babel-do-load-languages
      'org-babel-load-languages '((C . t)
				  (lisp . t)
				  (haskell . t)))

(use-package org-auto-tangle
  :defer t
  :hook (org-mode . org-auto-tangle-mode)
  :config
  (setq org-auto-tangle t))

(use-package pdf-tools :defer t)

(provide 'jc-orgtools)
