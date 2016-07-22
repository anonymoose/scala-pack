;; http://www.47deg.com/blog/scala-development-with-emacs

(require 'package)
(add-to-list 'package-archives
     '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;We have "sbt" and "scala" in /usr/local/bin so we add this path to the PATH environment
(setq exec-path (append exec-path '("/usr/local/bin")))
(setq exec-path (append exec-path '("/usr/local/sbin")))
(setenv "PATH" (shell-command-to-string "/bin/bash -c 'echo -n $PATH'"))

(setq ensime-startup-snapshot-notification 'nil)
