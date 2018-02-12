;;--------------------MELPA environment---------------------
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://elpa.zilongshanren.com/melpa/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.zilongshanren.com/gnu/")))
(package-initialize)
;;----------------------------------------------------------


;;----------------------Theme-------------------------------
(defvar zenburn-override-colors-alist
  '(("zenburn-bg+05" . "#282828")
    ("zenburn-bg+1"  . "#2F2F2F")
    ("zenburn-bg+2"  . "#3F3F3F")
    ("zenburn-bg+3"  . "#4F4F4F")))

(load-theme 'zenburn t)

;;---------------------Window-------------------------------


(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)

(setq column-number-mode t)
(setq line-number-mode t)
(global-linum-mode t)

(show-paren-mode t)
(setq show-paren-style 'parenthesis)

(tool-bar-mode 0)  
(menu-bar-mode 0)  
(scroll-bar-mode 0)  

(setq default-frame-alist
             '((vertical-scroll-bars)
               (top . 25)
               (left . 45)
               (width . 120)
               (height . 40)
               (cursor-color . "gold1")
               (mouse-color . "gold1")
               (tool-bar-lines . 0)
               (menu-bar-lines . 1)
               (right-fringe)
               (left-fringe)))

(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-use-mail-icon t)
(setq display-time-interval 10)
(display-time-mode 1)



;;----------------------------------------------------------

;;==========================================================
;;=                                                        =
;;=                     Extensions                         =
;;=                                                        =
;;==========================================================

;;------------------------Dash------------------------------
(add-to-list 'load-path "/path/to/dash-at-point")
(autoload 'dash-at-point "dash-at-point"
          "Search the word at point with Dash." t nil)
(global-set-key "\C-cd" 'dash-at-point)
(global-set-key "\C-ce" 'dash-at-point-with-docset)
;;----------------------------------------------------------

;;----------------------Error-Sound-------------------------
(setq visible-bell t)
;;----------------------------------------------------------

;;----------------------Smooth-Scrolling--------------------

(setq mouse-wheel-scroll-amount '(3 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;;----------------------------------------------------------

;;----------------------Org-Mode----------------------------
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
;;----------------------------------------------------------

;;-------------------Ace-Jump-Mode--------------------------
(add-to-list 'load-path "/full/path/where/ace-jump-mode.el/in/")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
;;----------------------------------------------------------


;;--------------------Ace-Window----------------------------
(global-set-key (kbd "M-p") 'ace-window)
;;----------------------------------------------------------

;;-----------------Auto-Complete-Mode-----------------------
(defcustom ac-modes
  '(emacs-lisp-mode
    lisp-mode
    lisp-interaction-mode
    c-mode cc-mode c++-mode
    java-mode clojure-mode scala-mode
    scheme-mode
    ocaml-mode tuareg-mode
    perl-mode cperl-mode python-mode ruby-mode
    ecmascript-mode javascript-mode js-mode js2-mode php-mode css-mode
    makefile-mode sh-mode fortran-mode f90-mode ada-mode
    xml-mode sgml-mode)
  "Major modes `auto-complete-mode' can run on."
  :type '(repeat symbol)
  :group 'auto-complete)
(ac-config-default)
;;----------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (org smooth-scroll ace-window zenburn-theme auto-complete ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
