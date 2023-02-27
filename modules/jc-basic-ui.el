(defvar jc-theme nil)
(defvar jc-default-theme 'misterioso)

(defun jc-set-theme (&optional theme)
  (interactive)
  (when theme
    (setq jc-theme theme))
  (load-theme (if jc-theme jc-theme jc-default-theme) t))

;; Minimal UI
(defun jc-set-minimal-ui ()
  (interactive)
  (scroll-bar-mode -1)
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (setq visible-bell t)
  (setq use-dialog-box nil))


(defun jc-add-line-numbers-hook ()
  (add-hook 'prog-mode-hook 'display-line-numbers-mode))

(provide 'jc-basic-ui)

