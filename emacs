;-*- mode: emacs-lisp -*-
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs custom set vaiables, not alter by any user
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-PDF-mode t)
 '(TeX-engine (quote xetex))
 '(TeX-master nil)
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(blink-cursor-mode t)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(display-time-mode t)
 '(global-undo-tree-mode t)
 '(gnutls-min-prime-bits 2048)
 '(holiday-bahai-holidays nil)
 '(holiday-general-holidays nil)
 '(holiday-hebrew-holidays nil)
 '(holiday-islamic-holidays nil)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/documents/notes.org")
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(jabber-alert-presence-hooks nil)
 '(jabber-avatar-verbose t)
 '(jabber-browse-buffer-format "*jabber-browse:-%n*")
 '(jabber-chat-buffer-format "*jabber-%n*")
 '(jabber-default-status "@emacs")
 '(jabber-history-dir "~/.emacs.d/chat-history")
 '(jabber-history-enabled t)
 '(jabber-history-size-limit 4096)
 '(jabber-libnotify-urgency "normal")
 '(jabber-mode-line-compact t)
 '(jabber-mode-line-mode t)
 '(jabber-roster-buffer "*-jabber-*")
 '(jabber-roster-line-format "%c %-25n %u %-8s")
 '(jabber-roster-show-bindings nil)
 '(jabber-roster-show-title nil)
 '(jabber-show-offline-contacts nil)
 '(jabber-show-resources nil)
 '(mingus-mode-always-modeline t)
 '(mingus-mode-line-show-elapsed-percentage t)
 '(mingus-mode-line-show-elapsed-time t)
 '(mingus-mpd-host nil)
 '(mingus-mpd-playlist-dir "/srv/mpd/playlists")
 '(mingus-mpd-root "/srv/mpd/music")
 '(mingus-playlist-separator "-|-")
 '(mingus-use-ido-mode-p t)
 '(org-agenda-files
   (quote
    ("~/documents/notes.org" "~/documents/personal.org" "~/documents/codex/codex.org")))
 '(org-agenda-start-on-weekday 0)
 '(org-habit-show-habits-only-for-today nil)
 '(org-hide-leading-stars t)
 '(org-image-actual-width (quote (200)))
 '(org-latex-pdf-process
   (quote
    ("xelatex -interaction nonstopmode %f" "xelatex -interaction nonstopmode %f")))
 '(org-log-into-drawer t)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m org-bookmark)))
 '(org-startup-truncated nil)
 '(org-startup-with-inline-images t)
 '(rich-minority-mode t)
 '(rm-base-text-properties
   (quote
    ((quote help-echo)
     (quote rm--help-echo)
     (quote mouse-face)
     (quote mode-line-highlight)
     (quote local-map)
     (quote mode-line-minor-mode-keymap)
     (quote face)
     (quote sml/folder))))
 '(rm-blacklist (quote (" hl-p" "undo-tree")))
 '(save-place t nil (saveplace))
 '(scroll-bar-mode nil)
 '(scss-compile-at-save nil)
 '(show-paren-mode t)
 '(sml/mode-width
   (if
       (eq powerline-default-separator
	   (quote arrow))
       (quote right)
     (quote full)))
 '(sml/name-width 40)
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s" powerline-default-separator
			    (car powerline-default-separator-dir)))
		   (quote powerline-active1)
		   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s" powerline-default-separator
			    (cdr powerline-default-separator-dir)))
		   (quote powerline-active1)
		   nil)))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s" powerline-default-separator
			    (car powerline-default-separator-dir)))
		   nil
		   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s" powerline-default-separator
			    (cdr powerline-default-separator-dir)))
		   (quote powerline-active2)
		   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes)))
 '(sml/replacer-regexp-list
   (quote
    (("^/srv/data/documents/" ":Org:")
     ("^~/\\.emacs\\.d/" ":ED:")
     ("^/sudo:.*:" ":SU:")
     ("^~/Documents/" ":Doc:")
     ("^~/Dropbox/" ":DB:")
     ("^:\\([^:]*\\):Documento?s/" ":\\1/Doc:")
     ("^~/[Gg]it/" ":Git:")
     ("^~/[Gg]it[Hh]ub/" ":Git:")
     ("^~/[Gg]it\\([Hh]ub\\|\\)-?[Pp]rojects/" ":Git:")
     ("^/srv" ":Srv:")
     ("^:Srv:/git" ":Git:")
     (":Doc:codex" ":Codex:"))))
 '(sml/theme (quote dark))
 '(tool-bar-mode nil)
 '(transient-mark-mode (quote (only . t))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground nil :background nil :family "Monaco" :foundry "unknown" :slant normal :weight normal :height 98 :width normal))))
 '(jabber-chat-prompt-foreign ((t (:foreground "orange red" :weight bold))))
 '(jabber-chat-prompt-local ((t (:foreground "deep sky blue" :weight bold))))
 '(jabber-roster-user-away ((t (:foreground "gold" :slant italic :weight normal))))
 '(jabber-roster-user-chatty ((t (:foreground "chartreuse" :slant normal :weight bold))))
 '(jabber-roster-user-online ((t (:foreground "spring green" :slant normal :weight bold))))
 '(jabber-title-large ((t (:inherit variable-pitch :weight ultra-light :height 2.0 :width ultra-expanded))))
 '(jabber-title-medium ((t (:inherit variable-pitch :weight light :height 1.5 :width expanded)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Leo's custom set variables, functions and settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Configure before loading org mode (package-initialize)
(package-initialize)
;; Set org-mode default major mode
(setq initial-major-mode 'org-mode)
;; Add some loadpaths
;;(add-to-list 'load-path  "~/.emacs.d")
;;Load private file
(load "~/.emacs.d/init-credentials")
;; Add better unicode support, but makes emacs extremely slow on startup
;(require 'unicode-fonts)
;(unicode-fonts-setup)

;; Start Ido mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq ido-use-filename-at-point 'guess)
(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)
;;;;;
;; Calendar Settings
;;;;
;;UK public holidays, and other UK notable dates.
(setq general-holidays
      '((holiday-fixed 1 1 "New Year's Day")
	(holiday-new-year-bank-holiday)
	(holiday-fixed 2 14 "Valentine's Day")
	(holiday-fixed 3 17 "St. Patrick's Day")
	(holiday-fixed 4 1 "April Fools' Day")
	(holiday-easter-etc -47 "Shrove Tuesday")
	(holiday-easter-etc -21 "Mother's Day")
	(holiday-easter-etc -2 "Good Friday")
	(holiday-easter-etc 0 "Easter Sunday")
	(holiday-easter-etc 1 "Easter Monday")
	(holiday-float 5 1 1 "Early May Bank Holiday")
	(holiday-float 5 1 -1 "Spring Bank Holiday")
	(holiday-float 6 0 3 "Father's Day")
	(holiday-float 8 1 -1 "Summer Bank Holiday")
	(holiday-fixed 10 31 "Halloween")
	(holiday-fixed 12 24 "Christmas Eve")
	(holiday-fixed 12 25 "Christmas Day")
	(holiday-fixed 12 26 "Boxing Day")
	(holiday-christmas-bank-holidays)
	(holiday-fixed 12 31 "New Year's Eve")))
;; Jersey Specific Bank Holidays
(setq local-holidays
      '((holiday-fixed 5 9 "Liberation Day")
	(holiday-float 8 4 2 "Battle of Flowers")))

;;Where 1 January falls on a weekend, the following Monday is a bank holiday.
(defun holiday-new-year-bank-holiday ()
  (let ((m displayed-month)
	(y displayed-year))
    (increment-calendar-month m y 1)
    (when (<= m 3)
      (let ((d (calendar-day-of-week (list 1 1 y))))
	(cond ((= d 6)
	       (list (list (list 1 3 y)
			   "New Year's Day Bank Holiday")))
	      ((= d 0)
	       (list (list (list 1 2 y)
			   "New Year's Day Bank Holiday"))))))))
;;; Christmas bank holidays
(defun holiday-christmas-bank-holidays ()
  (let ((m displayed-month)
	(y displayed-year))
    (increment-calendar-month m y -1)
    (when (>= m 10)
      (let ((d (calendar-day-of-week (list 12 25 y))))
	(cond ((= d 5)
	       (list (list (list 12 28 y)
			   "Boxing Day Bank Holiday")))
	      ((= d 6)
	       (list (list (list 12 27 y)
			   "Boxing Day Bank Holiday")
		     (list (list 12 28 y)
			   "Christmas Day Bank Holiday")))
	      ((= d 0)
	       (list (list (list 12 27 y)
			   "Christmas Day Bank Holiday"))))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Calfw mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'calfw-cal)
(require 'calfw-ical)
(require 'calfw-org)
;; Customize
;; Month
(setq calendar-month-name-array
  ["一月" "二月" "三月" "四月" "五月" "六月" "七月"    "八月"   "九月" "十月" "十一月" "十二月"])
;; Week days
(setq calendar-day-name-array ["日" "月" "火" "水" "木" "金" "土"])
;; First day of the week
(setq calendar-week-start-day 0) ; 0:Sunday, 1:Monday

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Frame size
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(if (window-system)
;    (set-frame-size (selected-frame) 110 52)
;  (set-frame-height (selected-frame) 52))
(setq default-frame-alist
      (quote ((fullscreen . maximized))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MELTA Packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Scroll bar
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(scroll-bar-mode -1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Transparency
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
;(set-frame-parameter (selected-frame) 'alpha '(93 90))
;(add-to-list 'default-frame-alist '(alpha 93 90))

;; (eval-when-compile (require 'cl))
;; (defun toggle-transparency ()
;;   (interactive)
;;   (if (/=
;;        (cadr (frame-parameter nil 'alpha))
;;        100)
;;       (set-frame-parameter nil 'alpha '(100 100))
;;     (set-frame-parameter nil 'alpha '(90 75))))
;; (global-set-key (kbd "C-c t") 'toggle-transparency)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global Keymaps
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Clipboard fix
(global-set-key (kbd "C-w") 'clipboard-kill-region)
(global-set-key (kbd "M-w") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-y") 'clipboard-yank)

;;Load undo-tree mode
(require 'undo-tree)
(global-undo-tree-mode)
;; Undo/Redo
(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "C-z") 'undo) ; 【Ctrl+z】
(global-set-key (kbd "C-S-z") 'redo) ; 【Ctrl+Shift+z】;  Mac style

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; emacs daemon shutdown
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; define function to shutdown emacs server instance
(defun server-shutdown ()
  "Save buffers, Quit, and Shutdown (kill) server"
  (interactive)
  (save-some-buffers)
  (kill-emacs)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; yes-no to y-n fix
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defalias 'yes-or-no-p 'y-or-n-p)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Web-Mode Setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(require 'php-mode)
;;(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'")
        ("blade"  . "\\.blade\\."))
)

;; Possible fix to auto-ident
;;PHP, JS, etc
(setq web-mode-code-indent-offset 2)
;; HTML
(setq web-mode-markup-indent-offset 2)
;;CSS
(setq web-mode-css-indent-offset 2)

;; Remove final whitespace on save
(add-hook 'local-write-file-hooks
            (lambda ()
               (delete-trailing-whitespace)
               nil))
;; Set  C-C C-; to un/comment
(add-hook 'web-mode-hook
	  (lambda ()
	    (define-key web-mode-map "\C-c C-;"
	      'web-mode-comment-or-uncomment)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set .zsh file to shell-script-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq auto-mode-alist (cons '("\\.zsh$" . shell-script-mode) auto-mode-alist))
(setq backup-directory-alist `(("." . "~/.saves")))
;; Fix zsh inside emacs
(setenv "ESHELL" (expand-file-name "/bin/eshell"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Web-mode settings in emacs
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "/usr/share/emacs/site-lisp/web-mode")
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\.phtml\'" . web-mode))
(add-to-list 'auto-mode-alist '("\.tpl\.php\'" . web-mode))
(add-to-list 'auto-mode-alist '("\.jsp\'" . web-mode))
(add-to-list 'auto-mode-alist '("\.as[cp]x\'" . web-mode))
(add-to-list 'auto-mode-alist '("\.erb\'" . web-mode))
(add-to-list 'auto-mode-alist '("\.mustache\'" . web-mode))
(add-to-list 'auto-mode-alist '("\.djhtml\'" . web-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; AUCTeX Settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load AUCTeX
;(load "auctex.el" nil t t)
;(load "preview-latex.el" nil t t)

;; Parsing
(setq TeX-auto-save t)
(setq TeX-parse-self t)
;; Make AUCTeX aware of multi-files \include \input
(setq-default TeX-master nil)
(setq-default TeX-parse-self t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Orgmode Setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; var declaration
;(setq org-mobile-inbox-for-pull "~/documents/notes.org")
;(setq org-mobile-directory "/data/documents/Dropbox/MobileOrg")
(setq org-directory "/data/documents/")
(setq org-default-notes-file (concat org-directory "/notes.org"))

;; Keyboard Setup
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cc" 'org-capture)

;; TODO Setup
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" ))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold))))

;; ;;Auto-run Mobile Pull
;; (require 'org)
;; (org-mobile-pull) ;; run org-mobile-pull at startup

;; (defun install-monitor (file secs)
;;   (run-with-timer
;;    0 secs
;;    (lambda (f p)
;;      (unless (< p (second (time-since (elt (file-attributes f) 5))))
;;        (org-mobile-pull)))))

;; (install-monitor (file-truename
;;                   (concat
;;                    (file-name-as-directory org-mobile-directory)
;;                           org-mobile-capture-file))
;;                  5)

;; ;; Do a pull every 5 minutes to circumvent problems with timestamping
;; ;; (ie. dropbox bugs)
;; (run-with-timer 0 (* 5 60) 'org-mobile-pull)

;; ;; Auto-run Mobile Push
;; (defvar org-mobile-push-timer nil
;;   "Timer that `org-mobile-push-timer' used to reschedule itself, or nil.")

;; (defun org-mobile-push-with-delay (secs)
;;   (when org-mobile-push-timer
;;     (cancel-timer org-mobile-push-timer))
;;   (setq org-mobile-push-timer
;;         (run-with-idle-timer
;;          (* 1 secs) nil 'org-mobile-push)))

;; (add-hook 'after-save-hook
;;  (lambda ()
;;    (when (eq major-mode 'org-mode)
;;      (dolist (file (org-mobile-files-alist))
;;       (if (string= (file-truename (expand-file-name (car file)))
;; 		   (file-truename (buffer-file-name)))
;;            (org-mobile-push-with-delay 30)))
;;    )))

;; (run-at-time "00:05" 86400 '(lambda () (org-mobile-push-with-delay 1))) ;; refreshes agenda file each day

;; Change beamer alert to bold
(defun my-beamer-bold (contents backend info)
  (when (eq backend 'beamer)
    (replace-regexp-in-string "\\`\\\\[A-Za-z0-9]+" "\\\\textbf" contents)))

;;(add-to-list 'org-export-filter-bold-functions 'my-beamer-bold)

;;beamer org export
;(require 'ox-latex)
;(add-to-list 'org-latex-classes
;             '("beamer"
;               "\\documentclass\[presentation\]\{beamer\}"
;               ("\\section\{%s\}" . "\\section*\{%s\}")
;               ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
;               ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mingus MPD Settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-file  "~/.emacs.d/elpa/mingus/libmpdee.el")
(load-file "~/.emacs.d/elpa/mingus/mingus.el")
(load-file "~/.emacs.d/elpa/mingus/mingus-stays-home.el")
(require 'libmpdee)
(global-set-key (kbd "C-S-j") 'mingus-query)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Resize Windows
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-<") 'shrink-window-horizontally)
(global-set-key (kbd "C->") 'enlarge-window-horizontally)
;;(global-set-key (kbd "C-<down>") 'shrink-window)
;;(global-set-key (kbd "S-C-<up>") 'enlarge-window)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Flyspell and ispell keybindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "<f8>") 'ispell-word)
(global-set-key (kbd "C-S-<f8>") 'flyspell-mode)
(global-set-key (kbd "C-M-<f8>") 'flyspell-buffer)
(global-set-key (kbd "C-<f8>") 'flyspell-check-previous-highlighted-word)
(defun flyspell-check-next-highlighted-word ()
  "Custom function to spell check next highlighted word"
  (interactive)
  (flyspell-goto-next-error)
  (ispell-word)
  )
(global-set-key (kbd "M-<f8>") 'flyspell-check-next-highlighted-word)

;; Fix Latex error report
(setq LaTeX-command-style '(("beamer" "%(PDF)%(latex) -file-line-error %S%(PDFout)") ("" "%(PDF)%(latex) %S%(PDFout)")))

;; Windmove windows
(require 'switch-window)
(global-set-key (kbd "C-x o") 'switch-window)

;; Kill scratch
(kill-buffer "*scratch*")

;; Enable smart mode line
(require 'smart-mode-line)
(sml/setup)
