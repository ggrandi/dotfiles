# DBG='0'

# [[ $DBG == '1' ]] && echo "0   $(date +%T.%N)"
if [[ "$(uname)" == "Darwin" ]]; then
  IS_MACOS=true

  export FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
else 
  export FPATH="$HOME/.zfunc/:$FPATH"
fi 

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# [[ $DBG == '1' ]] && echo "0.1 $(date +%T.%N)"

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# [[ $DBG == '1' ]] && echo "1   $(date +%T.%N)"

# Load completions
zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" light-mode \
    zsh-users/zsh-syntax-highlighting \
 blockf light-mode \
    zsh-users/zsh-completions \
  atload"!_zsh_autosuggest_start" light-mode \
    zsh-users/zsh-autosuggestions \
  light-mode \
    Aloxaf/fzf-tab

# [[ $DBG == '1' ]] && echo "2   $(date +%T.%N)"


# Add in snippets
zinit snippet OMZP::command-not-found
zinit snippet OMZP::archlinux
zinit snippet OMZL::directories.zsh

# [[ $DBG == '1' ]] && echo "3   $(date +%T.%N)"


# [[ $DBG == '1' ]] && echo "4   $(date +%T.%N)"

# keybindings
autoload -U up-line-or-beginning-search
zle -N up-line-or-beginning-search

autoload -U down-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey -v
bindkey -M vicmd '^p' up-line-or-beginning-search
bindkey -M vicmd '^n' down-line-or-beginning-search
bindkey -M viins '^p' up-line-or-beginning-search
bindkey -M viins '^n' down-line-or-beginning-search
bindkey -M viins "^a" beginning-of-line
bindkey -M viins "^e" end-of-line
bindkey '^r' history-incremental-search-backward
# bindkey ' ' magic-space


# [[ $DBG == '1' ]] && echo "5   $(date +%T.%N)"

# History
HISTSIZE=1000000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

function stop_history() {
  unsetopt appendhistory
  unsetopt sharehistory
}

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' disabled-on any
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'


# [[ $DBG == '1' ]] && echo "6   $(date +%T.%N)"

# ---
export EDITOR=nvim

# aliases
alias nvimconfig="$EDITOR ~/.config/nvim/"
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias httpserver="python3 -m http.server --bind 0.0.0.0"
alias :q="exit"
alias ls="exa"

source $HOME/.cargo/env

export NVM_DIR="$HOME/.nvm"

if [ $IS_MACOS ]; then
  alias tsconfig.json="cp ~/.base.tsconfig.json ./tsconfig.json"
  alias firefoxdev="/Applications/Firefox.app/Contents/MacOS/firefox -start-debugger-server"
  alias edgedev="/Applications/Microsoft\ Edge.app/Contents/MacOS/Microsoft\ Edge --remote-debugging-port=9222"
  alias wifi-password="/Users/giovannigrandi/Programming/bash/wifi-password/wifi-password.sh"
  alias daysSince="/Users/giovannigrandi/Desktop/daysSince.js"
  alias enabledeno="cp -R ~/.base.deno/* ."


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

  export LDFLAGS="-L/usr/local/opt/ruby/lib"
  export CPPFLAGS="-I/usr/local/opt/ruby/include"
  export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

  # NVM - node version management
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

  # for vscode
  [[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"
  [[ "$TERM_PROGRAM" == "vscode" ]] && . /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/out/vs/workbench/contrib/terminal/browser/media/shellIntegration-rc.zsh

  export PNPM_HOME="/Users/giovannigrandi/Library/pnpm"

  export PATH="/usr/local/opt/openjdk/bin:$PATH"


else
  # [[ $DBG == '1' ]] && echo "6.1 $(date +%T.%N)"
  lazy_load_nvm() {
    unset -f node nvm
    source /usr/share/nvm/init-nvm.sh
  }

  export node() {
    lazy_load_nvm
    node $@
  }

  export nvm() {
    lazy_load_nvm
    node $@
  }
  # [[ $DBG == '1' ]] && echo "6.2 $(date +%T.%N)"

  export PNPM_HOME="/home/giovannigrandi/.local/share/pnpm"

  export MANPATH="/usr/local/texlive/2024/texmf-dist/doc/man:$MANPATH"
  export INFOPATH="/usr/local/texlive/2024/texmf-dist/doc/info:$INFOPATH"
  export PATH="/usr/local/texlive/2024/bin/x86_64-linux:$PATH"

  export PATH="$HOME/.elan/bin:$PATH"

  export PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts"

  # enable haskell packages
  export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

  export PATH="$HOME/.nix-profile/bin:$PATH"
fi


export PATH="$HOME/.local/bin/:$PATH"


# opam configuration
# are linked in .zfunc by `ln -s  ~/.opam/opam-init/complete.zsh ~/.zfunc/_opam` to load with the rest of the completions
source $HOME/.opam/opam-init/variables.sh > /dev/null 2> /dev/null

# pnpm
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# bun completions
# are linked in .zfunc by `ln -s  ~/.bun/_bun ~/.zfunc/_bun` to load with the rest of the completions

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# [[ $DBG == '1' ]] && echo "8   $(date +%T.%N)"

# ---

# configure zoxide
# [[ $DBG == '1' ]] && echo "8.1 $(date +%T.%N)"
export _ZO_ECHO=1
eval "$(zoxide init zsh --cmd cd)"

# [[ $DBG == '1' ]] && echo "8.2 $(date +%T.%N)"
eval "$(fzf --zsh)"

# [[ $DBG == '1' ]] && echo "8.3 $(date +%T.%N)"
eval "$(starship init zsh)"

# [[ $DBG == '1' ]] && echo "9   $(date +%T.%N)"
