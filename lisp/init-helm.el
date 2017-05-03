(when (and (maybe-require-package 'helm)
           (maybe-require-package 'helm-ls-git)
           (maybe-require-package 'helm-descbinds))
  (require 'helm-config)
  (require 'helm-ls-git)
  (require 'helm-descbinds)
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  (global-set-key (kbd "C-x C-d") 'helm-browse-project)
  (global-set-key (kbd "C-<f6>") 'helm-ls-git-ls)
  (helm-mode 1)
  (helm-descbinds-mode))

(provide 'init-helm)