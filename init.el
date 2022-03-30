;;;; package --- Summary
;;; Commentary: Joe's init script, call dot_emacs.org to generate/execute dot_emacs.el
;;; Code:

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa2" . "http://www.mirrorservice.org/sites/melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa3" . "http://www.mirrorservice.org/sites/stable.melpa.org/packages/"))
;; (package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
(package-install 'use-package))

;; load and execute ~/.emacs.d/dot_emacs.org
(require 'org)
(require 'org-loaddefs)
(org-babel-load-file
 (expand-file-name "~/.emacs.d/dot_emacs.org"
                   user-emacs-directory))

;; for now, use ~/.emacs.d for all individual settings and libraries for specific stuff
;; this should be deprecated because of the org init file dot_emacs.org 12/6/2019
;; commented out old python and org configs; going with dot-emacs.org   03/25/2022
(progn (cd "~/.emacs.d/") (normal-top-level-add-subdirs-to-load-path))
;;(load-library "joe-python")            ;; python settings
;;(load-library "joe-org")               ;; standard org settings
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#f4f3ec" "#ba6236" "#7d9726" "#a5980d" "#36a166" "#5f9182" "#36a166" "#5f5e4e"])
 '(ansi-term-color-vector
   [unspecified "#f4f3ec" "#ba6236" "#7d9726" "#a5980d" "#36a166" "#5f9182" "#36a166" "#5f5e4e"] t)
 '(custom-enabled-themes '(doom-homage-black))
 '(custom-safe-themes
   '("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "0c3b1358ea01895e56d1c0193f72559449462e5952bded28c81a8e09b53f103f" "333958c446e920f5c350c4b4016908c130c3b46d590af91e1e7e2a0611f1e8c5" "c3fa63eab93d1f0b4bf9f60a98a2848ba29c34cc6f2ef5cf4076d9c190a47a6c" "0a8b65f747471394d1539ba19722f7ac733b5d1d9419a83f2b3eb9e9a1443aa9" "1048305cc1ac0f9088768641fb1c64756ee82b9d0b088b2950f6bae961dccc19" "76ed126dd3c3b653601ec8447f28d8e71a59be07d010cd96c55794c3008df4d7" "8d7b028e7b7843ae00498f68fad28f3c6258eda0650fe7e17bfb017d51d0e2a2" "28a104f642d09d3e5c62ce3464ea2c143b9130167282ea97ddcc3607b381823f" "f7fed1aadf1967523c120c4c82ea48442a51ac65074ba544a5aefc5af490893b" "a7b20039f50e839626f8d6aa96df62afebb56a5bbd1192f557cb2efb5fcfb662" "c4063322b5011829f7fdd7509979b5823e8eea2abf1fe5572ec4b7af1dd78519" "5a39d2a29906ab273f7900a2ae843e9aa29ed5d205873e1199af4c9ec921aaab" "b67b2279fa90e4098aa126d8356931c7a76921001ddff0a8d4a0541080dee5f6" "a61109d38200252de49997a49d84045c726fa8d0f4dd637fce0b8affaa5c8620" "c614d2423075491e6b7f38a4b7ea1c68f31764b9b815e35c9741e9490119efc0" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "99c86852decaeb0c6f51ce8bd46e4906a4f28ab4c5b201bdc3fdf85b24f88518" "4a9f595fbffd36fe51d5dd3475860ae8c17447272cf35eb31a00f9595c706050" "a9c619535d63719a15f22e3c450a03062d3fed1e356ef96d33015849c4c43946" default))
 '(diary-entry-marker 'font-lock-variable-name-face)
 '(elpy-rpc-backend "jedi" t)
 '(emms-mode-line-icon-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };"))
 '(exwm-floating-border-color "#181818")
 '(fci-rule-color "#f6f0e1")
 '(gnus-logo-colors '("#259ea2" "#adadad") t)
 '(gnus-mode-line-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };") t)
 '(highlight-tail-colors ((("#3d413c") . 0) (("#3a4143") . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#073642" "#268bd2"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#073642" "#859900"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#073642" "#56697A"))
 '(objed-cursor-color "#dc322f")
 '(org-agenda-custom-commands
   '(("d" todo "DELEGATED" nil)
     ("c" todo "DONE|DEFERRED|CANCELLED" nil)
     ("w" todo "WAITING" nil)
     ("W" agenda ""
      ((org-agenda-ndays 21)))
     ("A" agenda ""
      ((org-agenda-skip-function
	(lambda nil
	  (org-agenda-skip-entry-if 'notregexp "\\=.*\\[#A\\]")))
       (org-agenda-ndays 1)
       (org-agenda-overriding-header "Today's Priority #A tasks: ")))
     ("u" alltodo ""
      ((org-agenda-skip-function
	(lambda nil
	  (org-agenda-skip-entry-if 'scheduled 'deadline 'regexp "<[^>
]+>")))
       (org-agenda-overriding-header "Unscheduled TODO entries: ")))) t)
 '(org-agenda-files '("~/.emacs.d/org/todo.org"))
 '(org-agenda-ndays 7)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-start-on-weekday nil t)
 '(org-confirm-babel-evaluate nil)
 '(org-deadline-warning-days 14)
 '(org-default-notes-file (concat org-directory "/notes.org"))
 '(org-directory "~/Sync/orgfiles")
 '(org-export-html-postamble nil)
 '(org-fast-tag-selection-single-key 'expert)
 '(org-hide-leading-stars t)
 '(org-remember-store-without-prompt t)
 '(org-remember-templates
   '((116 "* TODO %?
  %u" "~/.emacs.d/org/todo.org" "Tasks")
     (110 "* %u %?" "~/.emacs.d/org/notes.org" "Notes")))
 '(org-reverse-note-order t)
 '(org-src-fontify-natively t)
 '(org-startup-folded 'overview)
 '(org-startup-indented t)
 '(package-selected-packages
   '(all-the-icons-ivy-rich all-the-icons-ivy noflet all-the-icons auto-package-update find-file-in-repository jedi python-mode zerodark-theme yasnippet-classic-snippets which-key wgrep-ag web-mode virtualenvwrapper use-package-hydra undo-tree try treemacs-projectile tomatinho tern-auto-complete tao-theme synosaurus spacemacs-theme smartparens simple-mpc rg redtick racer posframe poet-theme pcre2el ox-reveal origami org-pomodoro org-pdfview org-bullets org-attach-screenshot nov mu4e-conversation moe-theme mingus mandm-theme magit lsp-ui lsp-python-ms lsp-ivy keyfreq js2-refactor jade-mode irony-eldoc iedit hungry-delete htmlize helm-lsp haskell-mode habamax-theme gorepl-mode gore-mode golint godoctor gobgen go-tag go-stacktracer go-snippets go-scratch go-projectile go-playground-cli go-playground go-imports go-impl go-imenu go-gopath go-gen-test go-fill-struct go-errcheck go-dlv go-direx go-complete go-capf go-autocomplete go-add-tags git-timemachine git-gutter ggtags general fzf forecast flyspell-popup flyspell-correct-popup flyspell-correct-ivy flyspell-correct-helm flycheck-rust faff-theme eyebrowse expand-region exec-path-from-shell emmet-mode emacsql-sqlite3 elpy elfeed-org elfeed-goodies el-get easy-kill dumb-jump doom-themes doom-modeline dired-subtree dired-narrow dictionary default-text-scale deadgrep dap-mode counsel-spotify counsel-projectile company-math company-lsp company-jedi company-irony company-box color-theme-modern clj-refactor cl-libify cargo better-shell beacon base16-theme babel autopair auto-yasnippet auctex atomic-chrome all-the-icons-gnus all-the-icons-dired alect-themes aggressive-indent ag ac-js2))
 '(pdf-view-midnight-colors (cons "#002b36" "#839496"))
 '(remember-annotation-functions '(org-remember-annotation))
 '(remember-handler-functions '(org-remember-handler))
 '(rustic-ansi-faces
   ["#323334" "#C16069" "#A2BF8A" "#ECCC87" "#80A0C2" "#B58DAE" "#86C0D1" "#eceff4"])
 '(sp-escape-quotes-after-insert nil)
 '(vc-annotate-background "#f6f0e1")
 '(vc-annotate-color-map
   '((20 . "#d81212")
     (40 . "#f71010")
     (60 . "#6a621b")
     (80 . "#958323")
     (100 . "#ef8300")
     (120 . "#9ca30b")
     (140 . "#008b45")
     (160 . "#077707")
     (180 . "#028902")
     (200 . "#1c9e28")
     (220 . "#3cb368")
     (240 . "#0d7b72")
     (260 . "#358d8d")
     (280 . "#286060")
     (300 . "#2020cc")
     (320 . "#1111ff")
     (340 . "#2c53ca")
     (360 . "#a020f0")))
 '(vc-annotate-very-old-color "#a020f0"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
(put 'downcase-region 'disabled nil)
