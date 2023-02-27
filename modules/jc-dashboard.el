(require 'pkg-managment)
;;(require 'jc-full-ui)

(use-package dashboard
  :custom
  (dashboard-set-navigator t)
  (dashboard-center-content t)
  (dashboard-set-file-icons t)
  (dashboard-set-heading-icons t)
  (dashboard-image-banner-max-height 250)
  :config
  (dashboard-setup-startup-hook))

(provide 'jc-dashboard)
