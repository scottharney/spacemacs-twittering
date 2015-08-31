(eval-after-load 'twittering-mode
  '(progn
     (define-key twittering-mode-map (kbd "g") nil)
     (define-key twittering-mode-map (kbd "g g") 'twittering-goto-first-status)
     (define-key twittering-mode-map (kbd "c") 'twittering-current-timeline)
     (define-key twittering-mode-map (kbd "C-d") 'twittering-scroll-up)
     (define-key twittering-mode-map (kbd "C-u") 'twittering-scroll-down)
     (define-key twittering-mode-map (kbd "/") 'evil-search-forward)
     (define-key twittering-mode-map (kbd "?") 'evil-search-backward)
     (define-key twittering-mode-map (kbd "n") 'evil-search-next)
     (define-key twittering-mode-map (kbd "N") 'evil-search-previous)
     (define-key twittering-edit-mode-map [escape] 'twittering-edit-cancel-status)
     (define-key twittering-mode-map (kbd "<tab>") 'twittering-goto-next-uri)
     ;; make evil leader key work in twittering-mode
     (add-to-list 'evil-leader/no-prefix-mode-rx "twittering-mode")
     ;; the default size is 48 which I find too large
     ;; this requires imagemagick to be installed
     (setq twittering-convert-fix-size 32)
     (setq twittering-icon-mode t)
     ;; This requires gzip. The icons are saved on ~/.twittering-mode-icons.gz, which can be changed by the variable twittering-icon-storage-file
     (setq twittering-use-icon-storage t)
     ;; requires GnuPG to be installed
     (setq twittering-use-master-password t)))
