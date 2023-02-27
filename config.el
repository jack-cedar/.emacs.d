(use-package mood-line
  :init (mood-line-mode))

(use-package doom-themes)
(jc-set-theme 'doom-tokyo-night)

(set-face-attribute 'default nil
		    :font "Iosevka 15"
		    :weight 'medium)
(jc-add-line-numbers-hook)

;; All The Icons
(use-package all-the-icons)
(use-package all-the-icons-dired)
(setq all-the-icons-dired-monochrome nil)
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

(use-package vterm)

(require 'jc-exwm)
(defprocess my-bar "~/configs/lemonbar/lemonbar" :autostart t)
(defprocess firefox "firefox" :autostart t :workspace 1)
(defprocess discord "discord" :autostart t :workspace 2)
(gen-window-config)
(exwm-init)



;; Dashboard
(use-package dashboard
  :custom
  (dashboard-set-navigator t)
  (dashboard-center-content t)
  (dashboard-set-file-icons t)
  (dashboard-set-heading-icons t)
  (dashboard-image-banner-max-height 250)
  :config
  (dashboard-setup-startup-hook))



(require 'jc-vmoc)
(require 'jc-notetaking)
(require 'jc-devtools)
(require 'jc-consult)
;;(require 'my-funcs)

(require 'project)

(use-package clojure-mode)
(use-package cider)

(require 'jc-meow)

;;(require 'jc-lsp)

(use-package nix-mode)

(use-package general)

;;(use-package corfu
 ;; :init
  ;;(global-corfu-mode))
;;(setq tab-always-indent 'complete)

(winner-mode 1)

;; General keybindings
(use-package general)
(global-unset-key (kbd "C-SPC"))
(general-create-definer jc/my-leader-key
  :prefix "C-SPC")

;;(jc/my-leader-key
;;  "w" 'hydra-window/body)

;; Change colour of mode-line depending if window is active
(custom-set-faces
 '(mode-line-inactive ((t (:background nil)))))

;; Starting Exwm








