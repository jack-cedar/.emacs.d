
(require 'jc-exwm)
(defprocess my-bar "~/configs/lemonbar/lemonbar" :autostart t)
(defprocess firefox "firefox" :autostart t :workspace 1)
(defprocess discord "discord" :autostart t :workspace 2)
(gen-window-config)
(exwm-init)

(require 'jc-complete-ui)
(require 'jc-dashboard)
(require 'jc-vmoc)
(require 'jc-notetaking)
(require 'jc-devtools)
(require 'jc-consult)


(require 'jc-meow)

(require 'jc-lsp)

;; Prog Modes
(use-package nix-mode)
(use-package clojure-mode)

(setq delete-by-moving-to-trash t)
(custom-set-faces
 '(mode-line-inactive ((t (:background nil)))))

