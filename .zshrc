# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Turn off all beeps
# unsetopt BEEP
# Turn off autocomplete beeps
unsetopt LIST_BEEP
# Stop sharing between active sessions
unsetopt share_history

# oh my zsh config
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

# oh my zsh plugins
plugins=(git)
source $ZSH/oh-my-zsh.sh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Mac Specifics
if [[ "$OSTYPE" == "darwin"* ]]; then
  # pyenv
  # eval "$(pyenv init -)"

  # poetry
  export PATH="/Users/james/Library/Python/3.9/bin:$PATH"
  export PATH="/usr/local/opt/libpq/bin:$PATH"

  # local bin
  export PATH="/Users/james/bin:$PATH"

  # OpenJDK 11
  export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

  # OpenJDK Latest
  # export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

  # Ruby
  export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

  # iTerm2 Integration
  test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
  
  # Docker Desktop
  source /Users/james/.docker/init-zsh.sh || true

  # Postgres.app
  export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
