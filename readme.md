# unselectable-window-mode [![Build Status](https://travis-ci.org/EricCrosson/unselectable-window-mode.svg?branch=master)](https://travis-ci.org/EricCrosson/unselectable-window-mode)  [![Version](https://img.shields.io/github/tag/EricCrosson/unselectable-window-mode.svg)](https://github.com/EricCrosson/unselectable-window-mode/releases)

> Prevent a buffer from being selected by `other-window`

Click to select a window in `unselectable-window-mode`.

## Install

With [Quelpa](https://framagit.org/steckerhalter/quelpa)

``` {.sourceCode .lisp}
(use-package unselectable-window-mode
  :quelpa (unselectable-window-mode
           :fetcher github
           :repo "EricCrosson/unselectable-window-mode")
  :bind ("C-c C-w C-m" . unselectable-window-mode))
```

Or manually, after downloading into your `load-path`

``` {.sourceCode .lisp}
(require 'unselectable-window-mode)
(global-set-key (kbd "C-c C-w C-m") 'unselectable-window-mode)
```

## Example

![Example](https://raw.githubusercontent.com/EricCrosson/unselectable-window-mode/master/img/demo.gif)

## License

GPL 2 (or higher) © [Free Software Foundation, Inc](http://www.fsf.org/about).
