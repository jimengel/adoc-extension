To use this extension add the following in your .emacs file

(setq load-path
      (append load-path
             '("<replace this with the path to where your .emacs.d is located>/.emacs.d/elpa/adoc-extension")))

(autoload 'my-adoc-additions "adoc-extension")
(add-hook 'adoc-mode-hook 'my-adoc-additions)


In your .emacs.d/elpa directory
1 - add a directory called adoc-extension
2 - and add the files
      adoc-extension-autoloads.el
      adoc-extension.el
