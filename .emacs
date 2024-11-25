(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-command-list
   '(("LaTeX" "pdflatex --shell-escape %s.tex" TeX-run-TeX nil
      (LaTeX-mode docTeX-mode)
      :help "Run LaTeX")
     ("View" "zathura %s.pdf" TeX-run-discard-or-function t t :help "Run Viewer")))
 '(custom-enabled-themes '(tango-dark))
 '(package-selected-packages '(typescript-mode rust-mode auctex multiple-cursors)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'multiple-cursors)
(global-set-key (kbd "C-c C-l") 'mc/edit-lines)

(global-set-key (kbd "C-c C-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-a") 'mc/mark-all-like-this)

;; Enable xterm mouse mode
(xterm-mouse-mode 1)

;; Enable relative line numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
