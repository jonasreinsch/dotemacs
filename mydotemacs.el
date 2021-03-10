;; My .emacs

(setq mac-option-modifier nil     ;; disable option key
      mac-command-modifier 'meta  ;; treat command key as meta

      js-indent-level 2           ;; indent 2 spaces in Javascript mode

      visible-bell t              ;; no beeps
)

(tool-bar-mode 0)                 ;; hide the tool bar

(column-number-mode 1)            ;; show column position of cursor

(show-paren-mode 1)               ;; show matching parens
(setq show-paren-delay 0)         ;; do not delay showing paren matches

(put 'erase-buffer 'disabled nil) ;; allow erase-buffer function

;; Upon saving, check if buffer text looks like a script (starts with shebang).
;; If yes and file is not executable yet, make it executable.
(add-hook 'after-save-hook
	  'executable-make-buffer-file-executable-if-script-p)

(defun insert-date ()
  "Insert the current date in ISO 8601 format (like \"%Y-%m-%d\")"
  (interactive)
  (insert (format-time-string "%F\n" (current-time))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; M-x customize-face default to change, then copy from .emacs
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 200 :width normal :foundry "nil" :family "Menlo")))))
