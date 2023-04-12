(use-package mood-line
  :init (mood-line-mode))

(use-package doom-themes
:init
(jc-set-theme 'doom-tokyo-night)
  )


(set-face-attribute 'default nil
		    :font "Iosevka 15"
		    :weight 'medium)
(jc-add-line-numbers-hook)

;; All The Icons
(use-package all-the-icons)
(use-package all-the-icons-dired)
(setq all-the-icons-dired-monochrome nil)
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

(provide 'jc-complete-ui)
