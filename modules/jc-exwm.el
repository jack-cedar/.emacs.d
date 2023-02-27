
(defvar window-config-list '())

(defmacro gen-window-config ()
  `(progn
     (defun config-window-by-class ()
       (interactive)
       (pcase exwm-class-name
         ,@window-config-list))
     (add-hook 'exwm-manage-finish-hook #'config-window-by-class)))

(defmacro defprocess (name command &optional &key autostart &key workspace)
  (let* ((process-name (intern (format "%S/process" name)))
     (start-process-name (intern (format "%S/start" name)))
     (kill-process-name (intern (format "%S/kill" name))))
    `(progn
       ;; Define a variable to hold the process
       (defvar ,process-name nil)

       ;;Define a function to kill the process
       (defun ,kill-process-name ()
          (interactive)
          (when ,process-name
          (ignore-errors
            (,kill-process-name ,process-name))))

       ;;Define a function to start the process
       (defun ,start-process-name ()
         (interactive)
         (,kill-process-name)
         (setq ,process-name
               (start-process-shell-command  ,(symbol-name name) nil ,command)))

       ,(if autostart `(add-hook 'exwm-init-hook #',start-process-name))
       ,(if workspace
        `(add-to-list 'window-config-list
              '( ,(symbol-name name) (exwm-workspace-move-window ,workspace)))))))



(use-package exwm
  :straight t

  :custom
  ;; Set my Default ammount of Workspaces
  (exwm-workspace-number 5)

  ;; Makes it so workspace indicies start at 1 rather then the default 0
  (exwm-workspace-index-map (lambda (i) (number-to-string (1+ i))))

  
  ;; C-q will make the next key input to be directly sent to the application
  (define-key exwm-mode-map [?\C-q] 'exwm-input-send-next-key)
  (define-key exwm-mode-map (kbd "s-SPC") #'exwm-floating-toggle-floating)
  ;; Setup Global Keybindings for EXWM
  (exwm-input-global-keys
   `(

     ([XF86AudioLowerVolume] . (lambda ()
				  (interactive)
				   (start-process-shell-command
				    "amixer" nil "amixer -q sset Master 2%-")))
     ([XF86AudioRaiseVolume] . (lambda () (interactive)
				   (start-process-shell-command
				    "amixer" nil "amixer -q sset Master 2%+")))
     ([XF86AudioMute] . (lambda () (interactive)
				 (start-process-shell-command
				  "amixer" nil "amixer set Master toggle")))
     
     
     ;; Reset To Line Mode
     ([?\s-r] . exwm-reset)

     ;; Lauch Apps Via Shell Command
     ([?\s-l] . (lambda (command)
		  (interactive (list (read-shell-command "λ ")))
		  (start-process-shell-command command nil command)))

     ;; Switch Workspace
     ([?\s-w] . exwm-workspace-switch)

     ;; s-# Makes it so i can switch between workspaces using Super + Number Key
     ,@(mapcar (lambda (i)
		 `(,(kbd (format "s-%d" i)) .
		   (lambda ()
		     (interactive)
		     (exwm-workspace-switch-create (1-, i)))))
	       (number-sequence 0 9))
     ([?\s-f] . exwm-layout-toggle-fullscreen)
	    ))

  :config
  (add-hook 'exwm-update-class-hook #'(lambda ()(exwm-workspace-rename-buffer exwm-class-name)))


)
  
  
(provide 'jc-exwm)

