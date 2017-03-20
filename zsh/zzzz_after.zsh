# Load any custom after code
if [ -d $HOME/.zsh.after/ ]; then
  if [ "$(ls -A $HOME/.zsh.after/)" ]; then
    for config_file ($HOME/.zsh.after/*.zsh) source $config_file
  fi
fi

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Android
export ANDROID_HOME=/usr/local/opt/android-sdk

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Lazy load slow inits like nvm
export SANDBOXRC=$HOME/.yadr/zsh/sandboxrc
source $HOME/.yadr/zsh/sandboxd/sandboxd

# Run powerline daemon
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
