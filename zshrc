source $HOME/.yadr/zsh/prezto/runcoms/zshrc

for config_file ($HOME/.yadr/zsh/*.zsh) source $config_file

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Android
export ANDROID_HOME=/usr/local/opt/android-sdk

# Lazy load slow inits like nvm
export SANDBOXRC=$HOME/.yadr/zsh/sandboxrc
source $HOME/.yadr/zsh/sandboxd/sandboxd

# Run powerline daemon
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
fi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias git='hub'
