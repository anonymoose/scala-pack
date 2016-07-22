;(add-to-list exec-path "/usr/local/bin")

;; (use-package ensime
;;   :pin melpa-stable)

;; (live-add-pack-lib "/scala-mode/")
;; (live-add-pack-lib "/ensime-emacs/")

;; (require 'scala-mode)
;; (require 'ensime)

;(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
;(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))

;; (add-hook 'scala-mode-hook '(lambda ()
;;   (local-set-key (kbd "RET") 'newline-and-indent)))
;; (require 'package)

;; (setq
;;  use-package-always-ensure t
;;  package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                     ("org" . "http://orgmode.org/elpa/")
;;                     ("melpa" . "http://melpa.org/packages/")
;;                     ("melpa-stable" . "http://stable.melpa.org/packages/")))

;; (package-initialize)

;; (when (not package-archive-contents)
;;   (package-refresh-contents)
;;   (package-install 'use-package))

;; (package-install "ensime"
;;                  )

;; (require 'use-package)

(require 'package)
(add-to-list 'package-archives
     '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;We have "sbt" and "scala" in /usr/local/bin so we add this path to the PATH environment
(setq exec-path (append exec-path '("/usr/local/bin")))
(setq exec-path (append exec-path '("/usr/local/sbin")))
(setenv "PATH" (shell-command-to-string "/bin/bash -c 'echo -n $PATH'"))

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(setq ensime-startup-snapshot-notification 'nil)
