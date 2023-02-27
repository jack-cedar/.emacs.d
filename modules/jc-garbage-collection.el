(require 'pkg-managment)

(use-package gcmh
  :diminish gcmh-mode
  :config
  (setq gcmh-idle-delay 5
	gcmh-high-cons-threshold (* 16 1024 1024))  ; 16mb
  (gcmh-mode 1))

(provide 'jc-garbage-collection)
