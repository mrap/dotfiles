source $HOME/.yadr/zsh/prezto/runcoms/zshrc

for config_file ($HOME/.yadr/zsh/*.zsh) source $config_file

# Python
export PATH="/usr/local/opt/python@2/bin:$PATH"

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

alias git='hub'

# Fix Python Error: "Invalid dylib load. Clients should not load the unversioned libcrypto dylib as it does not have a stable ABI"
export DYLD_FALLBACK_LIBRARY_PATH=/usr/local/opt/openssl@1.1/lib

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
