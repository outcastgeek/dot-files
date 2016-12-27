;; -*- mode: emacs-lisp -*-
;; This file is loaded exec-path-from-shell-argumentsby Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     asciidoc
     asm
     autohotkey
     c-c++
     clojure
     common-lisp
     csharp
     csv
     d
     elixir
     elm
     erlang
     extra-langs
     fsharp
     go
     graphviz
     haskell
     html
     ipython-notebook
     java
     ;;javascript
     (javascript :variables javascript-disable-tern-port-files nil)
     latex
     lua
     nim
     ocaml
     php
     purescript
     python
     racket
     ruby
     rust
     scala
     scheme
     shaders
     shell-scripts
     sql
     swift
     ;;typescript
     (typescript :variables
                 typescript-fmt-on-save t
                 typescript-fmt-tool 'typescript-formatter)
     yaml
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want 173.194.238.170to use right away.
     ;; Uncomment some layer names and press <SPC f e R>173.194.238.170 (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     emacs-lisp
     git
     markdown
     org
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     spell-checking
     syntax-checking
     version-control
     themes-megapack
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      ;;company
                                      ;;paredit
                                      rainbow-delimiters
                                      slime
                                      slime-company
                                      ;; emmet-mode
                                      ;; js2-mode
                                      ;; ac-js2
                                      dart-mode
                                      scss-mode
                                      flycheck
                                      flycheck-tip
                                      yaml-mode
                                      flymake-yaml
                                      ;;elpy
                                      ;;py-autopep8
                                      ;;ein
                                      ;;jedi
                                      ;;anaconda-mode
                                      ;;hy-mode
                                      magit
                                      ;;scheme-complete
                                      ;;clojure-mode
                                      ;;cider
                                      ;;clj-refactor
                                      ;;haskell-mode
                                      ;;stack-mode
                                      ;;purescript-mode
                                      ;;psci
                                      ;;elm-mode
                                      ;;erlang
                                      ;;flycheck-dialyzer
                                      lfe-mode
                                      ;;alchemist
                                      ;;go-mode
                                      ;;go-complete
                                      ;company-go
                                      ;;go-autocomplete
                                      ;go-projectile
                                      ;;rust-mode
                                      ;;flycheck-rust
                                      ;;cargo
                                      ;;racer
                                      ;;toml-mode
                                      ;;company-racer
                                      ;;swift-mode
                                      company-sourcekit
                                      quickrun
                                      ;;nim-mode
                                      ;;flycheck-nim
                                      ;;d-mode
                                      ;;flycheck-dmd-dub
                                      ;;flycheck-d-unittest
                                      ;;cmake-ide
                                      ;;cmake-mode
                                      groovy-mode
                                      gradle-mode
                                      yasnippet
                                      ;; http://domeide.github.io/
                                      docker
                                      dockerfile-mode
                                      )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         ;; http://themegallery.robdor.com/
                         default
                         zonokai-blue
                         material
                         dichromacy
                         leuven
                         lush
                         ;; spacemacs-dark
                         ;; spacemacs-light
                         )
   ;dotspacemacs-themes '(lush)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put almost
any user code here.  The exception is org related code, which should be placed
in `dotspacemacs/user-config'."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."

  ;; "Interactively Do Things" IDO
  (require 'ido)
  (ido-mode t)
  (setq ido-enable-flex-matching t)
  (setq ido-enable-last-directory-history t)
  (setq ido-everywhere t)
  (setq ido-completion-buffer-all-completions t)

  ;; Set Path on OSX
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize))

  ;; ;; Set Exec Path from Shell
  ;; (defun set-exec-path-from-shell-PATH ()
  ;;   (let ((path-from-shell (replace-regexp-in-string
  ;;                           "[ \t\n]*$"
  ;;                           ""
  ;;                           (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
  ;;     (setenv "PATH" path-from-shell)
  ;;     (setq eshell-path-env path-from-shell) ; for eshell users
  ;;     (setq exec-path (split-string path-from-shell path-separator))))
  ;; (when window-system (set-exec-path-from-shell-PATH))

  ;;;; Scheme
  (setq scheme-program-name "gsi -:d-") ;; Gambit Scheme
  ;(setq inferior-lisp-program "/usr/local/bin/ecl")
  ;(setq inferior-lisp-program "/usr/local/bin/ccl")
  ;(setq inferior-lisp-program "ccl")

  ;; https://github.com/roswell/roswell/wiki/1.1-Initial-Recommended-Setup
  ;; ros install quicklisp-slime-helper
  ;; ros -Q -e '(ql:quickload :quicklisp-slime-helper)' -q
  ;; https://leanpub.com/fullstacklisp/read
  ;; ros -Q -e '(ql:quickload :quicklisp-slime-helper)' -q
  ;;(load (expand-file-name "~/.roswell/impls/ALL/ALL/quicklisp/slime-helper.el"))
  (load (expand-file-name "~/.roswell/lisp/quicklisp/slime-helper.el"))
  (setq inferior-lisp-program "ros -L sbcl -Q -l ~/.sbclrc run")
  (setf slime-lisp-implementations
        `((sbcl-bin ("ros" "-Q" "-l" "~/.sbclrc" "-L" "sbcl-bin" "run"))
          (sbcl ("ros" "-Q" "-l" "~/.sbclrc" "-L" "sbcl" "run"))
          (abcl ("ros" "-Q" "-l" "~/.abclrc" "-L" "abcl" "run"))
          (ccl ("ros" "-Q" "-l" "~/.ccl-init.lisp" "-L" "ccl-bin" "run"))
          (clisp ("ros" "-Q" "-l" "~/.clisprc.lisp" "-L" "clisp" "run"))
          (cmu-bin ("ros" "-Q" "-l" "~/.cmucl-init.lisp" "-L" "cmu-bin" "run")) ;; (ql:add-to-init-file)
          (ecl  ("ros" "-Q" "-l" "~/.eclrc" "-L" "ecl" "run"))
          ;; (sbcl    ("sbcl" "--dynamic-space-size" "2000"))
          (roswell ("ros" "dynamic-space-size=2000" "-Q" "-l" "~/.sbclrc" "run"))))
  (setf slime-default-lisp 'roswell) ;; Default Lisp
  (setq slime-net-coding-system 'utf-8-unix)
  (defun lisp-hook-fn ()
    (interactive)
    ;; Start slime mode
    (slime-mode)
    ;; Some useful key-bindings
    (local-set-key [tab] 'slime-complete-symbol)
    (local-set-key (kbd "M-q") 'slime-reindent-defun)
    ;; We set the indent function. common-lisp-indent-function
    ;; will indent our code the right way
    (set (make-local-variable lisp-indent-function) 'common-lisp-indent-function)
    ;; We tell slime to not load failed compiled code
    (setq slime-load-failed-fasl 'never))
  ;; Finally we tell lisp-mode to run our function on startup
  (add-hook 'lisp-mode-hook 'lisp-hook-fn)

  ;; Hooks

  (global-linum-mode t) ;; enable line numbers globally

  (require 'flycheck)
  ;; turn on flychecking globally
  (add-hook 'after-init-hook 'global-flycheck-mode)

  (require 'flycheck-tip)
  ;;(flycheck-tip-use-timer 'verbose)

  ;; turn on company-mode globally
  (global-company-mode t)

  ;; turn on global prettify symbols mode
  (global-prettify-symbols-mode t)

  ;; turn on global auto highlight symbol mode
  (global-auto-highlight-symbol-mode t)

  ;; Nim
  ;; https://github.com/nim-lang/nim-mode
  (setq nim-nimsuggest-path "~/.nimble/bin/nimsuggest")
  ;; (add-to-list 'company-backends
  ;;              '(company-nim :with company-nim-builtin))
  (require 'flycheck-nim)
  (require 'quickrun)

  ;; Rust
  ;; https://bassam.co/emacs/2015/08/24/rust-with-emacs/
  ;; https://github.com/phildawes/racer
  ;; https://github.com/racer-rust/emacs-racer
  (setq racer-cmd "~/.cargo/bin/racer")
  (setq racer-rust-src-path "~/.rust/src/")
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)
  (add-hook 'racer-mode-hook #'company-mode)
  ;(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
  (setq company-tooltip-align-annotations t)

  ;; Haskell

  (add-hook 'haskell-mode-hook 'company-mode)
  ;(add-to-list 'company-backends 'company-ghc)
  (custom-set-variables '(company-ghc-show-info t))
  (add-hook 'haskell-mode-hook (lambda () (ghc-init) (hare-init)))
  (add-hook 'haskell-mode-hook 'structured-haskell-mode)
  (add-hook 'haskell-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'haskell-mode-hook 'subword-mode)
  (add-hook 'haskell-mode-hook 'stack-mode)

  ;; enable purescript smart indentation and purscheck whenever a
  ;; purescript file is loaded into emacs
  (add-hook 'purescript-mode-hook 'turn-on-purescript-indentation)
  (add-hook 'purescript-mode-hook 'flycheck-mode)
  (add-hook 'purescript-mode-hook 'inferior-psci-mode)

  (add-hook 'elm-mode-hook
            (lambda ()
              (setq company-backends '(company-elm))))

  ;; Clojure

  (setq cider-cljs-lein-repl "(do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl))")

  (require 'clj-refactor)

  (defun my-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (yas-minor-mode 1) ; for adding require/use/import statements
    ;; This choice of keybinding leaves cider-macroexpand-1 unbound
    exec-path-from-shell-arguments    (cljr-add-keybindings-with-prefix "C-c C-m"))

  (add-hook 'clojure-mode-hook #'my-clojure-mode-hook)

  ;;;; Clojurescript
  (add-to-list 'auto-mode-alist '("\\.cljs\\.hl\\'" . clojurescript-mode))

  (add-hook 'clojure-mode-hook
            '(lambda ()
               ;; Hoplon functions and macros
               (dolist (pair '((page . 'defun)
                               (loop-tpl . 'defun)
                               (if-tpl . '1)
                               (for-tpl . '1)
                               (case-tpl . '1)
                               (cond-tpl . 'defun)))
                 (put-clojure-indent (car pair)
                                     (car (last pair))))))

  ;; ;; PYTHON CONFIGURATION
  ;; ;; --------------------------------------

  ;; (elpy-enable)
  ;; ;(elpy-use-ipython)

  ;; ;; use flycheck not flymake with elpy
  ;; (when (require 'flycheck nil t)
  ;;   (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  ;;   (add-hook 'elpy-mode-hook 'flycheck-mode))

  ;; ;; enable autopep8 formatting on save
  ;; (require 'py-autopep8)
  ;; (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

  ;; HY CONFIGURATION
  ;; --------------------------------------

  (require 'hy-mode)

  ;; Adding paredit minor mode
  (add-hook 'hy-mode-hook 'paredit-mode)

  ;; Add smartparens-strict-mode
  (add-hook 'hy-mode-hook #'smartparens-strict-mode)

  ;; alternatively you could enable this to a bunch of lisp modes
  (dolist (lisp-mode '(scheme emacs-lisp lisp clojure hy))
    (add-hook (intern (concat (symbol-name lisp-mode) "-mode-hook"))
              'paredit-mode))

  (setq hy-mode-inferior-lisp-command "hy")
  ;;(setq hy-mode-inferior-lisp-command "/path/to/python -i /path/to/hy-script.py")

  ;; http://tleyden.github.io/blog/2014/05/22/configure-emacs-as-a-go-editor-from-scratch/
  ;; Golang

  (defun my-go-mode-hook ()
    ;; Setup GOPATH
    (exec-path-from-shell-copy-env "GOPATH")
    ;; Use goimports instead of go-fmt
    (setq gofmt-command "goimports")
    ;; Call Gofmt before saving
    (add-hook 'before-save-hook 'gofmt-before-save)
    ;; Godef jump key binding
    (local-set-key (kbd "M-.") 'godef-jump)
    ;; Customize compile command to run go build
    (if (not (string-match "go" compile-command))
        (set (make-local-variable 'compile-command)
             "go build -v && go test -v && go vet"))
    ;; ;; Go oracle
    ;; (load-file "$GOPATH/src/golang.org/x/tools/cmd/oracle/oracle.el")
    ;; Go Guru
    (load-file "$GOPATH/src/golang.org/x/tools/cmd/guru/go-guru.el")
    (go-guru-hl-identifier-mode)
    ;; Reset GOPATH
    ;;(setenv "GOPATH" (shell-command-to-string "$GOPATH/bin/gb env GB_PROJECT_DIR"))
    ;; (setenv "GOPATH"
    ;;         (concat (getenv "GOPATH")
    ;;                 ":"
    ;;                 (shell-command-to-string "$GOPATH/bin/gb env GB_SRC_PATH")))
    ;; Godef jump key binding (Now you can jump into code with M-. and jump back with M-*)
    (local-set-key (kbd "M-.") 'godef-jump)
    ;; Company Go
    ;; (set (make-local-variable 'company-backends) '(company-go))
    ;; (company-mode)
    )
  (add-hook 'go-mode-hook 'my-go-mode-hook)

  ;; Javascript

  (setq flycheck-checkers '(javascript-eslint))

  ;; disable jshint since we prefer eslint checking
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(javascript-jshint)))
  ;; use eslint with web-mode for jsx files
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  ;; disable json-jsonlist checking for json files
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(json-jsonlist)))

  ;; Indent Javascript
  (setq-default js2-basic-offset 2)

  ;; Indent JSON
  (setq-default js-indent-level 2)

  ;; Dart
  (setq dart-enable-analysis-server t)
  (add-hook 'dart-mode-hook 'flycheck-mode)

  ;; Swift
  (require 'swift-mode)
  (require 'company-sourcekit)

  ;; Erlang

  (require 'flycheck)

  ;; (flycheck-define-checker erlang-otp
  ;;   "An Erlang syntax checker using the Erlang interpreter."
  ;;   :command ("erlc" "-o" temporary-directory "-Wall"
  ;;             "-I" "../include" "-I" "../../include"
  ;;             "-I" "../../../include" source)
  ;;   :error-patterns
  ;;   ((warning line-start (file-name) ":" line ": Warning:" (message) line-end)
  ;;    (error line-start (file-name) ":" line ": " (message) line-end)))

  (add-hook 'erlang-mode-hook
            (lambda ()
              (flycheck-select-checker 'erlang-otp)
              (flycheck-mode)))

  ;; Elixir
  (add-hook 'alchemist-mode-hook 'company-mode)

  ;; Docker
  ;; https://github.com/Silex/docker.el
  ;(setenv "DOCKER_TLS_VERIFY" "1")
  (setenv "DOCKER_HOST" "tcp://0.0.0.0:2375")

  ;; Org Mode
  ;; By default the list is set to ("◉" "○" "✸" "✿")
  (setq org-bullets-bullet-list '("■" "◆" "▲" "▶"))
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.

