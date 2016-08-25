(eval-after-load 'twittering-mode
  '(progn
     (evilified-state-evilify-map twittering-mode-map
       :mode twittering-mode
       :bindings
       "g" nil
       "c" 'twittering-current-timeline
       "C-u" 'twittering-scroll-down
       "/" 'evil-search-forward
       "?" 'evil-search-backward
       "n" 'evil-search-next
       "N" 'evil-serach-previous
       "j" 'twittering-goto-next-status
       "k" 'twittering-goto-previous-status 
       "L" 'twittering-other-user-list-interactive
       "gr" 'twittering-current-timeline
       "gn" 'twittering-goto-next-status-of-user
       "gv" 'twittering-other-user-timeline
       "GV" ' twittering-visit-timeline
       [escape] 'twittering-edit-cancel-status
       "<tab>" 'twittering-goto-next-uri)

     ;; display icons 
     (setq twittering-icon-mode t)
     ;; the default size is 48 which I find too large
     ;; this requires imagemagick to be installed
     (if (executable-find "convert")
         (setq twittering-convert-fix-size 32))
     ;; This requires gzip. The icons are saved on ~/.twittering-mode-icons.gz,
     ;; which can be changed by the variable twittering-icon-storage-file
     (if (executable-find "gzip")
         (setq twittering-use-icon-storage t))
     ;; requires GnuPG to be installed
     (if (executable-find "gpg")
         (setq twittering-use-master-password t))))
