# Add deno completions to search path
if [[ ":$FPATH:" != *{DENO_COMPLETIONS}* ]]; then export FPATH={DENO_FPATH}; fi

# Autostart
() {
  setopt LOCAL_OPTIONS NO_MONITOR
  fcitx5 -d &> /dev/null &
  wait
}

# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load Angular CLI autocompletion.
export DOTNET_ROOT=$HOME/.dotnet

export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

# pnpm
export PNPM_HOME={PNPM}
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Aliases

alias waifu={WAIFU}
alias lasf="ls -laF"
alias prx={PRX}
alias lesgow={LESGOW}
alias jpmu={JPMU}
alias jpmuU={JPMUU}

# Shell function aliases
raku() {
  {RAKU}
}

# bun completions
[ -s {BUN} ] && source {BUN}

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Alacritty
fpath+=${ZDOTDIR:-~}/.zsh_functions

# Cool start
fastfetch

# Go Path

export GOPATH="$HOME/go"

# Deno Path
export PATH="$GOPATH/bin:$PATH"
{DENO}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Status Bar Customization

ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
