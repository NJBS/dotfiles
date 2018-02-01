;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; cscope
     ;; imenu-list
     ;; ivy
     ;; semantic
     ;; sml
     ;; themes-megapack
     auto-completion
     better-defaults
     bibtex
     c-c++
     coq
     emacs-lisp
     ess
     fasd
     git
     github
     gtags
     haskell
     helm
     html
     ;; java
     javascript
     latex
     markdown
     ocaml
     org
     python
     racket
     ranger
     react
     restclient
     scala
     shell
     shell-scripts
     syntax-checking
     version-control
     yaml
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(vimish-fold dtrt-indent hasky-stack)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(yasnippet magithub)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the lastest
   ;; version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 10)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `vim-powerline' and `vanilla'. The first three
   ;; are spaceline themes. `vanilla' is default Emacs mode-line. `custom' is a
   ;; user defined themes, refer to the DOCUMENTATION.org for more info on how
   ;; to create your own spaceline theme. Value can be a symbol or list with\
   ;; additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator arrow :separator-scale 1.1)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font `("Source Code Pro"
                               :size 16
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key ":"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab t
   ;; If non-nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ t
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t

   ;; If non-nil, `J' and `K' move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil

   ;; If non-nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names t
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

   ;; If non-nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil

   ;; if non-nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil

   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom

   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy nil
   ;; If non-nil, the paste transient-state is enabled. While enabled, pressing
   ;; `p' several times cycles through the elements in the `kill-ring'.
   ;; (default nil)
   dotspacemacs-enable-paste-transient-state t
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
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

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
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

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing
   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."

  ;; Override dired with ranger
  (setq ranger-override-dired t)

  ;; Github markdown
  (setq markdown-live-preview-engine 'vmd)
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  ;; Tab-width
  (setq-default indent-tabs-mode nil)
  (setq-default tab-width 4)

  ;; Have projectile use linux find
  (setq projectile-indexing-method 'alien)

  ;; C/C++ style
  (setq c-default-style "bsd"
        c-basic-offset 4)

  ;; Clang support (clang-format & clang-complete snippets)
  (setq c-c++-enable-clang-support t)

  ;; Flycheck and clang arugments for syntax checking in C/C++
  (add-hook 'c++-mode-hook
            (lambda ()
              (setq flycheck-clang-language-standard "c++11")
              (setq company-clang-arguments '("-Weverything"))
              (setq company-c-headers-path-user '("../include" "./include" "." "../../include" "../inc" "../../inc"))
              (setq flycheck-clang-include-path '("../include" "./include" "." "../../include" "../inc" "../../inc"))))
  (add-hook 'c-mode-hook
            (lambda ()
              (setq flycheck-clang-language-standard "gnu99")
              (setq company-clang-arguments '("-Weverything"))
              (setq company-c-headers-path-user '("../include" "./include" "." "../../include" "../inc" "../../inc"))
              (setq flycheck-clang-include-path '("../include" "./include" "." "../../include" "../inc" "../../inc"))))

  ;; Start all frames maximized
  (add-to-list 'default-frame-alist '(fullscreen . maximized))

  ;; Scroll compilation output to first error
  (setq compilation-scroll-output t)
  (setq compilation-scroll-output #'first-error)

  ;; TODO highlighting
  (defun highlight-todos ()
    (font-lock-add-keywords nil '(("\\<\\(NOTE\\|TODO\\|HACK\\|BUG\\):" 1 font-lock-warning-face t))))
  (add-hook 'prog-mode-hook #'highlight-todos)

  ;; Autocomplete docstring tooltips
  (setq auto-completion-enable-help-tooltip t)
  (setq syntax-checking-enable-tooltips t)

  ;; Open welcome screen on new frames
  (setq initial-buffer-choice (lambda () (get-buffer spacemacs-buffer-name)))

  ;; Use ctrl + l to complete exclusively
  (setq auto-completion-return-key-behavior nil)
  (setq auto-completion-tab-key-behavior nil)
  (with-eval-after-load 'company
    (define-key company-active-map (kbd "TAB") nil)
    (define-key company-active-map (kbd "<tab>") nil)
    (define-key company-active-map (kbd "RET") nil)
    (define-key company-active-map (kbd "<return>") nil))
  (setq tab-always-indent t)

  ;; Turn off Latex auto formating source code
  (setq font-latex-fontify-script nil)

  ;; Turn off smart-paren auto-highlighting
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
  (spacemacs/set-leader-keys "SPC" #'avy-goto-char-timer)

  ;; Clang-format style
  (setq clang-format-style "{BasedOnStyle: LLVM, AlignEscapedNewlinesLeft: true, AlignTrailingComments: true, AllowAllParametersOfDeclarationOnNextLine: true, AllowShortBlocksOnASingleLine: false, AllowShortFunctionsOnASingleLine: None, AllowShortIfStatementsOnASingleLine: false, AllowShortLoopsOnASingleLine: false, AlwaysBreakTemplateDeclarations: true, BreakBeforeBraces: Allman, ColumnLimit: 0, IndentCaseLabels: true, IndentWidth: 4, MaxEmptyLinesToKeep: 2, SpaceBeforeAssignmentOperators: true, SpaceBeforeParens: ControlStatements, Standard: Auto, TabWidth: 4}")

  ;; Stop python from complaining when opening a REPL
  (setq python-shell-prompt-detect-failure-warning nil)

  ;; Quick ediff
  (spacemacs/set-leader-keys "od" #'ediff-buffers)

  ;; Stop spacemacs from restoring windows when finished ediffing
  (remove-hook 'ediff-quit-hook #'winner-undo)

  ;; Quick server restart
  (spacemacs/set-leader-keys "os" #'server-start)

  ;; 0.1 second company delay in popups
  (setq company-idle-delay 0.1)

  ;; Vimish fold bindings
  (define-key evil-normal-state-map "zc" #'vimish-fold)
  (define-key evil-normal-state-map "zC" #'vimish-fold-avy)
  (define-key evil-normal-state-map "za" #'vimish-fold-toggle)
  (define-key evil-normal-state-map "zd" #'vimish-fold-delete)

  ;; Global basic auto complete
  (global-company-mode)

  ;; Guess indentation
  (dtrt-indent-mode)

  ;; Stop dtrt-indent from cluttering modeline, this might not be the best way
  ;; to do this but it works
  (add-hook 'buffer-list-update-hook (lambda () (setq dtrt-indent-mode-line-info nil)))

  ;; I don't use bidi fonts so turning them off might improve render times
  (setq bidi-display-reordering nil)

  ;; Faster scrolling with C-e/C-y
  (setq-default evil-scroll-line-count 3)

  ;; No need for these in the modeline
  (spacemacs|diminish ggtags-mode)
  (spacemacs|diminish which-key-mode)
  (spacemacs|diminish helm-gtags-mode)
  (spacemacs|diminish spacemacs-whitespace-cleanup-mode)

  ;; Personal dropbox dirs, I use many windows computers with a different number
  ;; of drives so I define an environment variable "Dropbox" on each one
  (defun NJBS/get-dropbox-dir ()
    "Grab Dropbox directory"
    (interactive)
    (cond ((spacemacs/system-is-linux)    "~/Dropbox/")
          ((spacemacs/system-is-mswindows (getenv "Dropbox")))))
  (defvar NJBS/todolist (concat (NJBS/get-dropbox-dir) "todolist.org"))
  (setq org-agenda-files (list NJBS/todolist))

  ;; Some templates and force insert mode when capturing
  (setq org-capture-templates
        '(("t" "Todo" entry (file+headline NJBS/todolist "Tasks")
           "* TODO %?\n")
          ("e" "Entertainment")
          ("eb" "Book" entry (file+olp NJBS/todolist "Entertainment" "Books")
           "* TODO %?\n")
          ("eg" "Game" entry (file+olp NJBS/todolist "Entertainment" "Games")
           "* TODO %?\n")
          ("em" "Movie" entry (file+olp NJBS/todolist "Entertainment" "Movies")
           "* TODO %?\n")
          ("et" "Television Show" entry (file+olp NJBS/todolist "Entertainment" "Television Shows")
           "* TODO %?\n")
          ))
  (add-hook 'org-capture-mode-hook 'evil-insert-state)

  ;; Intero for haskell, if I ever switch off of stack this will probably change
  (setq haskell-completion-backend 'intero)

  ;; Pretty symbols cause issues with some fonts
  ;; (with-eval-after-load 'company-coq
  ;;   (add-to-list 'company-coq-disabled-features 'prettify-symbols))

  ;; scheme == racket for my purposes
  (add-to-list 'auto-mode-alist '("\\.scm\\'" . racket-mode))

  ;; Keep tooltip from closing when hovering over flycheck error
  (setq flycheck-pos-tip-timeout 1000)

  ;; For when ranger doesn't cut it
  (defun NJBS/start-explorer ()
    "Start file explorer at current file's directory"
    (interactive)
    (browse-url-of-file "."))
  (spacemacs/set-leader-keys "oe" #'NJBS/start-explorer)

  ;; Use hlint alongside intero
  (with-eval-after-load 'intero
    (flycheck-add-next-checker 'intero '(warning . haskell-hlint)))

  ;; Coq config
  (setq coq-one-command-per-line nil)
  (setq coq-mode-abbrev-table nil)

  ;; Hasky Stack config
  (setq hasky-stack-auto-target t)
  (spacemacs/set-leader-keys-for-major-mode 'haskell-mode
    "b" 'hasky-stack-execute)
  (push '(compilation-mode          :dedicated t :position bottom :stick t :noselect t   :height 0.4) popwin:special-display-config)

  ;; R config
  (setq ess-ask-for-ess-directory nil)
  (with-eval-after-load 'ess-help
    (evilified-state-evilify-map ess-help-mode-map
      :mode ess-help-mode))
  (setq ess-disable-underscore-assign t)
  (setq spaceline-responsive nil)

  ;; Tramp config
  (setq tramp-default-method "ssh")
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
