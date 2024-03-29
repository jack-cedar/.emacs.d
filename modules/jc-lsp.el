(use-package yasnippet)

(use-package lsp-bridge
 :defer t
 :elpaca (lsp-bridge :host github
              :repo "manateelazycat/lsp-bridge"
              :files ("*.el" "*.py" "acm" "core" "langserver"
                      "multiserver" "resources"))
 :config
 (global-lsp-bridge-mode))

(provide 'jc-lsp)
