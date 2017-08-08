;;; init.el --- This is a basic emacs configuration aimed at social scientists using R/latex/markdown/git

;;; Commentary:
;; init.el is the first file that Emacs reads when it starts up. We
;; don't do much here, but we do tell it to load another file
;; "init-emacs.org", which is where we do most of our configuration.

;; A description on how to use this file and the corresponding org
;; file is given in the README document, which you should have
;; received along with this file. If not, you may find it on github:
;; https://github.com/jabranham/emacs-for-social-science


;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(if (version< emacs-version "24.5.1"); Minimum version is emacs 24.5.1
    (error "Your Emacs is too old -- this config requires v%s or higher"))

(require 'org)
(org-babel-load-file (concat user-emacs-directory "init-emacs.org"))

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ivy-bibtex ivy magit polymode markdown-mode auctex ess smartparens company-quickhelp company better-defaults use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
