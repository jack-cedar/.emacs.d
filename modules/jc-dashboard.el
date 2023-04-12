(require 'pkg-managment)
(use-package dashboard
  :custom
  (dashboard-projects-backend 'project-el)
 
  (dashboard-set-navigator t)
  (dashboard-center-content t)
  (dashboard-set-file-icons t)
  (dashboard-set-heading-icons t)
  (dashboard-image-banner-max-height 250)
  
  :config
  (add-to-list 'dashboard-items '(projects) t)
  (dashboard-setup-startup-hook)
  (symbolp dashboard-projects-backend))



(provide 'jc-dashboard)
