# ADOC extension to allow you to easily convert your adoc file to html

To use this extension add the following in your .emacs file

```(setq load-path
   (append load-path
   '("<replace this with the path to where your .emacs.d is located>/.emacs.d/elpa/adoc-extension")))
(autoload 'my-adoc-additions "adoc-extension")
(add-hook 'adoc-mode-hook 'my-adoc-additions)
```


In your .emacs.d/elpa directory

1 - add a directory called adoc-extension

2 - and add the files

      adoc-extension-autoloads.el
      
      adoc-extension.el

To use this, while editing an adoc file in emacs.
Do a cntl-shift-s and it will run the makefile and convert you adoc to html
