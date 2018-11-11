;;; unselectable-window-mode.el --- Prevent a buffer from being selected by `other-window`
;;
;;; Copyright (C) 2018  Free Software Foundation, Inc.
;;
;; Author: Eric Crosson <eric.s.crosson@utexas.com>
;; Version: 0.0.1
;; Keywords: convenience
;; URL: https://github.com/EricCrosson/unselectable-window-mode
;; Package-Requires: ((emacs "24"))
;;
;; This file is not a part of GNU Emacs.
;;
;;
;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;
;;
;;; Commentary:

;; (global-set-key (kbd "C-c C-w C-m") 'unselectable-window-mode)
;;   - or -
;; M-x unselectable-window-mode
;;   to toggle a window's selectable status inside a window

;;; Code:


(defun unselectable-window-mode-on ()
  "Turn on function `unselectable-window-mode'."
  (set-window-parameter (selected-window) 'no-other-window t)
  (message "Window will now be ignored by `other-window'"))

(defun unselectable-window-mode-off ()
  "Turn off function `unselectable-window-mode'."
  (set-window-parameter (selected-window) 'no-other-window nil)
  (message "Window will now be recognized by `other-window'"))

(define-minor-mode unselectable-window-mode
  "Toggle minor mode `unselectable-window-mode'.

When enabled, `unselectable-window-mode' prevents a window from being
chosen by `other-window'. "
  :init-value nil
  :lighter " unselectable"
  :keymap (make-sparse-keymap)
  :global nil
  :group 'unselectable-window
  :require 'unselectable-window-mode
  (if unselectable-window-mode
      (unselectable-window-mode-on)
    (unselectable-window-mode-off)))


(provide 'unselectable-window-mode)

;;; unselectable-window-mode.el ends here
