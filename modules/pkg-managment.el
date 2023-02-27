;; Bootstrap straight.el for installing packages
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Install use-package as a frontend for straight and to make configuring easier
(straight-use-package 'use-package)

;; Configure straight to be the default backend for use-package
(use-package straight
  :custom (straight-use-package-by-default t))
(use-package no-littering)
(provide 'pkg-managment)
