(package-initialize)
(require 'package)

;; Additional  Archives
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

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
   '(magit smex jinx auto-correct auto-complete typescript-mode rust-mode auctex multiple-cursors)))

;; Spellcheck coloring
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(error ((t (:foreground "color-223"))))
 '(jinx-misspelled ((t (:underline (:color "brightcyan" :style wave :position nil) :inherit error))))
 '(org-block ((t (:background "#A9A9A9" :foreground "#000000")))))

;; Multiple cursors bindings
(keymap-global-set "C-c C-m C-e" 'mc/edit-ends-of-lines)
(keymap-global-set "C-c C-m C-a" 'mc/edit-beginnings-of-lines)
(keymap-global-set "C-c C-m C-p" 'mc/mark-previous-like-this)
(keymap-global-set "C-c C-m C-n" 'mc/mark-next-like-this)
(keymap-global-set "C-c C-m C-m" 'mc/mark-all-like-this)
(keymap-global-set "C-c ?" 'comment-region)
(keymap-global-set "C-c M-?" 'uncomment-region)

;; Use replace regexp instead of query replace
(keymap-global-set "M-%" 'replace-regexp)
(keymap-global-set "M-%" 'replace-regexp)

;; Enable autocomplete
(global-auto-complete-mode)

;; Enable compilation mode
(compilation-minor-mode)

;; Enable xterm mouse mode
(xterm-mouse-mode)

;; Enable relative line numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

;; Enable ido mode
(ido-mode 1)
(ido-everywhere 1)

;; Set spellcheck
(setq ispell-program-name "aspell")

;; Org mode source block styling
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

;; Better line wrapping for org-mode
(add-hook 'org-mode-hook (lambda ()
                           (setq display-line-numbers-type 'visual)
			   (define-key org-mode-map (kbd "C-c C-m") nil)
			   (define-key org-mode-map (kbd "C-c ?") nil)
                           (word-wrap-whitespace-mode t)
			   (toggle-truncate-lines 0)
					    ))


