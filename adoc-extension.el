;;; adoc-mode.el --- a major-mode for editing AsciiDoc files in Emacs
;;
;; Copyright 2010-2013 James Engel <jimengel1209@gmail.com>
;;
;; Author: Jim Engel <jimengel1209@gmail.com>
;; URL: https://github.com/????/adoc-extension/wiki
;; Created: 2014
;; Version: 20140417.0
;; X-Original-Version: 0.6.2
;; Package-Requires: ((adoc-mode "1.0.0"))
;; Keywords: wp AsciiDoc
;; 
;; This file is not part of GNU Emacs.
;; 
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;
;; The syntax of the following commentary section is Markdown, so the same text
;; can be used for the wiki page on GitHub. Also, each paragraph, including list
;; items, are separated by blank lines, so it also looks good on Marmalade.
;;; Commentary:
;; 
;; # Introduction 
;; 
;; [AsciiDoc](http://www.methods.co.nz/asciidoc/) is a text document format for
;; writing short documents, articles, books and UNIX man pages. AsciiDoc files
;; can be translated to HTML and DocBook markups.
;; 
;; adoc-mode is an Emacs major mode for editing AsciiDoc files. It emphasizes on
;; the idea that the document is highlighted so it pretty much looks like the
;; final output. What must be bold is bold, what must be italic is italic etc.
;; Meta characters are naturally still visible, but in a faint way, so they can
;; be easily ignored.
;; 
;; 
;; # Download 
;; 

(require 'adoc-mode) ; https://github.com/sensorflo/adoc-mode


(defun adoc-save ( )
  (interactive)
  (setq my-file buffer-file-name)
  (setq my-dir  default-directory)
  (message my-dir)
  (save-buffer)
  ;;(delete-other-windows)
  (message "Running gmake ...")
  ;;(switch-to-buffer "gmake-out")
  ;;(split-window-horizontally) 
  ;;(split-window-vertically) 
  (call-process "gmake" nil "gmake-out" nil "all")
  (message "Completed gmake ...")
  ;;(find-file-other-window "/afs/btv.ibm.com/u3/jengel/alacrite/DOC/quickStart/alacriteQuickStartGuide.pdf")
)

(defun my-adoc-additions ( )
  (interactive)
  ;;(local-set-key "\C-x\C-s" 'adoc-save)
  ;;(local-set-key (kbd "C-x C-S-s") 'adoc-save)
  (local-set-key (kbd "C-S-s") 'adoc-save)
  ;;(message "Using my adoc additions")
)

(add-hook 'adoc-mode-hook 'my-adoc-additions)




(provide 'adoc-mode)

;;; adoc-extension.el ends here

