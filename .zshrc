if [[ `uname -s` == "Darwin" ]]; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

# creates a header using ANSI Shadow font (http://www.patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=`Text to transform`)
# cat ~/.header.txt

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
if [[ `uname -s` == "Darwin" ]]; then
  plugins=(
    git
    brew
    node
    macos
  )
else
  plugins=(
    git
    node
  )
fi

source $ZSH/oh-my-zsh.sh


if [[ `uname -s` == "Darwin" ]]; then
  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias nvimconfig="$EDITOR ~/.config/nvim/"
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias bci="brew cask install --force"
alias bu="brew upgrade && brew upgrade --cask"
alias httpserver="python3 -m http.server --bind 0.0.0.0"
alias b64="node /Users/giovannigrandi/Programming/base64_encoding/dist/base64_encoding.js"
alias addwasm="cargo generate --git https://github.com/rustwasm/wasm-pack-template"
alias tsconfig.json="cp ~/.base.tsconfig.json ./tsconfig.json"
alias reddit_dl="node /Users/giovannigrandi/Programming/NodeJS/reddit_dl.js"
alias firefoxdev="/Applications/Firefox.app/Contents/MacOS/firefox -start-debugger-server"
alias edgedev="/Applications/Microsoft\ Edge.app/Contents/MacOS/Microsoft\ Edge --remote-debugging-port=9222"
alias wifi-password="/Users/giovannigrandi/Programming/bash/wifi-password/wifi-password.sh"
alias daysSince="/Users/giovannigrandi/Desktop/daysSince.js"
alias enabledeno="cp -R ~/.base.deno/* ."
alias :q="exit"
alias vim="nvim"
alias cwd="echo \$PWD"

# enable thefuck
# eval $(thefuck --alias)

export PATH="/Users/giovannigrandi/.deno/bin:$PATH"

export PATH="/usr/local/opt/curl/bin:$PATH"

# xcode tools
export PATH="/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH"

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/Users/giovannigrandi/Programming/Flutter/flutter/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/python@3.10/bin:$PATH"
export PATH="/usr/local/opt/python@3.10/Frameworks/Python.framework/Versions/3.10/bin:$PATH"
export PATH="/Users/giovannigrandi/Library/Python/3.8/bin:$PATH"
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"

source $HOME/.cargo/env

# John the ripper
# export PATH="/Users/giovannigrandi/Programming/picoCTF/john/run:$PATH"

# if in a node package enable binaries
if test -d "node_modules/.bin/"; then
  print "enabling node_modules bin"
  export PATH="$PWD/node_modules/.bin:$PATH"
fi

export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

# NVM - node version management
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# for vscode
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"
[[ "$TERM_PROGRAM" == "vscode" ]] && . /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/out/vs/workbench/contrib/terminal/browser/media/shellIntegration-rc.zsh

# bun completions
[ -s "/Users/giovannigrandi/.bun/_bun" ] && source "/Users/giovannigrandi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# pnpm
export PNPM_HOME="/Users/giovannigrandi/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# opam configuration
[[ ! -r /Users/giovannigrandi/.opam/opam-init/init.zsh ]] || source /Users/giovannigrandi/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null


