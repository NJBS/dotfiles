;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
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
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; (default t)
   dotspacemacs-enable-lazy-installation nil
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; cscope
     ;; themes-megapack
     auto-completion
     better-defaults
     c-c++
     emacs-lisp
     git
     github
     gtags
     html
     java
     javascript
     latex
     markdown
     org
     python
     racket
     ranger
     rust
     semantic
     shell
     shell-scripts
     spacemacs-helm
     speed-reading
     syntax-checking
     unimpaired
     version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(yasnippet)
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
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
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
   ;; Possible values are: `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 10
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font `("Consolas"
                               :size ,(if (> (x-display-pixel-height) 1080) 28 14) ;; 14 for 1080p, 28 for surface
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
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key ":"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab t
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ t
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
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
   dotspacemacs-enable-paste-transient-state nil
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
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling nil
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t
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
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place you code here."

  ;; Tab-width
  (setq indent-tabs-mode nil)
  (setq tab-width 4)

  ;; Have projectile use linux find
  (setq projectile-indexing-method 'alien)

  ;; Enable caching of files in projectile searches
  (setq projectile-enable-caching t)

  ;; C/C++ style
  (setq c-default-style "bsd" c-basic-offset 4)

  ;; Clang support (clang-format & clang-complete snippets)
  (setq c-c++-enable-clang-support t)

  ;; Flycheck and clang arugments for syntax checking in C/C++
  (add-hook 'c++-mode-hook
            (lambda ()
              (setq flycheck-clang-language-standard "c++11")
              (setq company-clang-arguments '("-Weverything"))
              (setq company-c-headers-path-user '("../include" "./include" "." "../../include" "../inc" "../../inc"))
              (setq company-c-headers-path-system '("C:/cygwin64/lib/gcc/x86_64-pc-cygwin/5.3.0/include/c++"))
              (setq flycheck-clang-include-path '("../include" "./include" "." "../../include" "../inc" "../../inc" "C:/cygwin64/lib/gcc/x86_64-pc-cygwin/5.3.0/include/c++"))))
  (add-hook 'c-mode-hook
            (lambda ()
              (setq flycheck-clang-language-standard "gnu99")
              (setq company-clang-arguments '("-Weverything"))
              (setq company-c-headers-path-user '("../include" "./include" "." "../../include" "../inc" "../../inc"))
              (setq company-c-headers-path-system '("C:/cygwin64/lib/gcc/x86_64-pc-cygwin/5.3.0/include"))
              (setq flycheck-clang-include-path '("../include" "./include" "." "../../include" "../inc" "../../inc" "C:/cygwin64/lib/gcc/x86_64-pc-cygwin/5.3.0/include"))))

  ;; Start all frames maximized
  (add-to-list 'default-frame-alist '(fullscreen . maximized))

  ;; Scroll compilation output to first error
  (setq compilation-scroll-output t)
  (setq compilation-scroll-output 'first-error)

  ;; TODO highlighting
  (defun highlight-todos ()
    (font-lock-add-keywords nil '(("\\<\\(NOTE\\|TODO\\|HACK\\|BUG\\):" 1 font-lock-warning-face t))))
  (add-hook 'prog-mode-hook 'highlight-todos)

  ;; Autocomplete docstring tooltips
  (setq auto-completion-enable-help-tooltip t)

  ;; Powerline separator config
  (setq powerline-default-separator 'arrow)

  ;; Open welcome screen on new frames
  (setq initial-buffer-choice (lambda () (get-buffer spacemacs-buffer-name)))

  ;; Use ctrl + l to complete exclusively
  (setq auto-completion-return-key-behavior nil)
  (setq auto-completion-tab-key-behavior nil)

  ;; Turn off Latex auto formating source code
  (setq font-latex-fontify-script nil)

  ;; Turn off smart-paran auto-highlighting
  (setq sp-highlight-pair-overlay nil)
  (setq sp-highlight-wrap-overlay nil)
  (setq sp-highlight-wrap-tag-overlay nil)

  ;; Change org bullets
  ;; (setq org-bullets-bullet-list '("◉" "○" "◆" "✿"))
  (setq org-bullets-bullet-list '("•" "•" "•" "•"))

  ;; Make the compilation window close automatically if no errors
  (setq compilation-finish-functions
        (lambda (buf str)
          (if (null (string-match ".*exited abnormally.*" str))
              (progn
                (run-at-time
                 "1 sec" nil 'delete-windows-on
                 (get-buffer-create "*compilation*"))
                (message "No Compilation Errors")))))

  ;; Disable lockfiles
  (setq create-lockfiles nil)

  ;; Quick character jump
  (spacemacs/set-leader-keys "SPC" 'avy-goto-word-or-subword-1)

  ;; Clang-format style
  (setq clang-format-style "{BasedOnStyle: LLVM, AlignEscapedNewlinesLeft: true, AlignTrailingComments: true, AllowAllParametersOfDeclarationOnNextLine: true, AllowShortBlocksOnASingleLine: false, AllowShortFunctionsOnASingleLine: None, AllowShortIfStatementsOnASingleLine: false, AllowShortLoopsOnASingleLine: false, AlwaysBreakTemplateDeclarations: true, BreakBeforeBraces: Allman, ColumnLimit: 0, IndentCaseLabels: true, IndentWidth: 4, MaxEmptyLinesToKeep: 2, SpaceBeforeAssignmentOperators: true, SpaceBeforeParens: ControlStatements, Standard: Auto, TabWidth: 4}")

  ;; Bind clang-format functions
  (spacemacs/set-leader-keys-for-major-mode 'c-mode
    "fb" 'clang-format-buffer
    "fr" 'clang-format-region)
  (spacemacs/set-leader-keys-for-major-mode 'c++-mode
    "fb" 'clang-format-buffer
    "fr" 'clang-format-region)

  ;; Windows cmder bindings
  (defun start-cmder ()
    "Start cmder in current directory"
    (interactive)
    (let ((proc (start-process "cmder" nil "cmder.exe" "/START" default-directory)))
      (set-process-query-on-exit-flag proc nil)))

  (spacemacs/set-leader-keys "oc" 'start-cmder)

  ;; Windows explorer bindings
  (defun start-explorer ()
    "Start explorer in current directory"
    (interactive)
    (let ((proc (start-process "explorer" nil "explorer.exe" ".")))
      (set-process-query-on-exit-flag proc nil)))

  (spacemacs/set-leader-keys "oe" 'start-explorer)

  ;; Windows performance improvement /I think/
  (setq w32-get-true-file-attributes nil)

  ;; Better pdf viewing experience in doc-view
  (setq doc-view-resolution 144)
  (setq doc-view-continuous t)

  ;; Stop python from complaining when opening a REPL
  (setq python-shell-prompt-detect-failure-warning nil)

  ;; Better next/prev error bindings
  (spacemacs/set-leader-keys "on" 'next-error)
  (spacemacs/set-leader-keys "op" 'previous-error)

  ;; Quick ediff
  (spacemacs/set-leader-keys "od" 'ediff-buffers)

  ;; Stop spacemacs from restoring windows when finished ediffing
  (remove-hook 'ediff-quit-hook #'winner-undo)

  ;; Quick server restart
  (spacemacs/set-leader-keys "os" 'server-start)

  ;; Java eclim setup
  (setq eclim-eclipse-dirs "C:/eclipse")
  (setq eclim-executable "C:/eclipse/eclim")

  ;; 0.1 second company delay in popups
  (setq company-idle-delay 0.1)

  ;; Override dired with ranger
  (setq ranger-override-dired t)

  ;; TODO Contribute this back to upstream
  (spacemacs|diminish helm-gtags-mode "Ⓖ" "G")
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
