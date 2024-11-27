(package-initialize)
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
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
 '(package-selected-packages
   '(smex jinx jit-spell auto-correct auto-complete typescript-mode rust-mode auctex multiple-cursors)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(error ((t (:foreground "color-223"))))
 '(jinx-misspelled ((t (:underline (:color "brightcyan" :style wave :position nil) :inherit error))))
 '(org-block ((t (:background "#A9A9A9" :foreground "#000000")))))

(require 'multiple-cursors)
(global-set-key (kbd "C-c C-l") 'mc/edit-lines)

(global-set-key (kbd "C-c C-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-a") 'mc/mark-all-like-this)

(global-auto-complete-mode)
(compilation-minor-mode)

;; Enable xterm mouse mode
(xterm-mouse-mode)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

;; Enable relative line numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
(ido-mode 1)
(ido-everywhere 1)
(setq ispell-program-name "aspell")

(setq visible-bell t)

;; fontify code in code blocks
(setq org-src-fontify-natively t)

(defface org-block-begin-line
  '((t (:foreground "#00A9A9" :background "#A9A9A9")))
  "Face used for the line delimiting the begin of source blocks.")

(defface org-block-end-line
  '((t (:foreground "#00A9A9" :background "#A9A9A9")))
  "Face used for the line delimiting the end of source blocks.")

;; Smex keybindings
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
