(require 'jc-defaults)

(require 'jc-exwm)
(defprocess my-bar "~/configs/lemonbar/lemonbar" :autostart t)
(defprocess firefox "firefox" :autostart t :workspace 1)
(defprocess discord "discord" :autostart t :workspace 2)
(gen-window-config)
(exwm-init)

(require 'jc-meow)
(require 'jc-lsp)

(prog-modes
 rust-mode
 zig-mode
 haskell-mode
 )

(use-package cider :defer t)


(use-package envrc :config (envrc-global-mode))




