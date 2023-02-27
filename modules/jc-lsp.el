(use-package yasnippet)

(use-package lsp-bridge
 :defer t
 :straight (lsp-bridge :host github
              :repo "manateelazycat/lsp-bridge"
              :files ("*.el" "*.py" "acm" "core" "langserver"
                      "multiserver" "resources")))

(provide 'jc-lsp)
