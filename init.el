(add-to-list 'load-path (expand-file-name "modules/" user-emacs-directory))
(require 'jc-basic-ui)
(jc-set-minimal-ui)
(require 'jc-garbage-collection)

(load (expand-file-name "config.el" user-emacs-directory))
