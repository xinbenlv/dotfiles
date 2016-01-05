;; Remove startup message for meacs
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; Load custom theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Pick a color theme for start up
;;(load-theme 'hickey t)
(load-theme 'cyberpunk t)
;;(load-theme 'leuven t)

;; Enable visual-line
(visual-line-mode t)

;; Enable ctrl-C, V, X copy paste cut
(cua-mode t)

;; Turn on source code syntax highlight
(setq org-src-fontify-natively t)

(eval-after-load "org"
  '(require 'ox-md nil t))

;; Turn on auto-load
(global-auto-revert-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("978bd4603630ecb1f01793af60beb52cb44734fc14b95c62e7b1a05f89b6c811" "66e8bc258edb2775a4051b9d0485428346feafc3626de7eb4816e7cbd41a729b" "d0ff5ea54497471567ed15eb7279c37aef3465713fb97a50d46d95fe11ab4739" "b493cbae81d10ea35d1b4c1102853045eee97d139af81da29212ebeb2358fc19" "e26780280b5248eb9b2d02a237d9941956fc94972443b0f7aeec12b5c15db9f3" default)))
 '(org-time-stamp-custom-formats (quote ("<%yyyy-%mm-%dd>" . "<%yyyy-%mm-%dd %HH:%MM:%SS>"))))
 '(font-lock-string-face ((t (:foreground "LimeGreen"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

