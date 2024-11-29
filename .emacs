(package-initialize)
(require 'package)

;; Additional  Archives
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(custom-set-variables
 '(TeX-command-list
   '(("LaTeX" "pdflatex --shell-escape %s.tex" TeX-run-TeX nil
      (LaTeX-mode docTeX-mode)
      :help "Run LaTeX")
     ("View" "zathura %s.pdf" TeX-run-discard-or-function t t :help "Run Viewer")))
 '(custom-enabled-themes '(tango-dark))
  '(package-selected-packages
   '(smex jinx auto-correct auto-complete typescript-mode rust-mode auctex multiple-cursors)))

;; Spellcheck coloring
(custom-set-faces
 '(error ((t (:foreground "color-223"))))
 '(jinx-misspelled ((t (:underline (:color "brightcyan" :style wave :position nil) :inherit error))))
 '(org-block ((t (:background "#A9A9A9" :foreground "#000000")))))

;; Multiple cursors bindings
(global-set-key (kbd "C-c C-m C-e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-c C-m C-a") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C-c C-m C-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-m C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-m C-m") 'mc/mark-all-like-this)

;; Use replace regexp instead of query replace
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
                           (word-wrap-whitespace-mode t)
			   (toggle-truncate-lines 0)
					    ))
