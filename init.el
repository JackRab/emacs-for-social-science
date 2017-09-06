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
 '(custom-safe-themes
   (quote
    ("67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "e1994cf306356e4358af96735930e73eadbaf95349db14db6d9539923b225565" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "6952b5d43bbd4f1c6727ff61bc9bf5677d385e101433b78ada9c3f0e3787af06" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default)))
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (dired-quick-sort hungry-delete powerline alect-themes eziam-theme moe-theme color-theme evil-tutor spacemacs-theme pdf-tools ivy-bibtex ivy magit polymode markdown-mode auctex ess smartparens company-quickhelp company better-defaults use-package)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
