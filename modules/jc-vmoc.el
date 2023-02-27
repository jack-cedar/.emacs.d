(use-package vertico
  :defer t
  :init (vertico-mode))

(use-package marginalia
  :defer t
  :init (marginalia-mode))

(use-package orderless
  :defer t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

 (use-package cape
  :defer 10
  :bind (("C-c p p" . completion-at-point))
  :init
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-file))

(provide 'jc-vmoc)
