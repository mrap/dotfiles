# Setup fzf
# ---------
if [[ ! "$PATH" =~ "/usr/local/Cellar/fzf/HEAD/bin" ]]; then
  export PATH="$PATH:/usr/local/Cellar/fzf/HEAD/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" =~ "/usr/local/Cellar/fzf/HEAD/man" && -d "/usr/local/Cellar/fzf/HEAD/man" ]]; then
  export MANPATH="$MANPATH:/usr/local/Cellar/fzf/HEAD/man"
fi

# Auto-completion
# ---------------
# [[ $- =~ i ]] && source "/usr/local/Cellar/fzf/HEAD/shell/completion.zsh"

# Key bindings
# ------------
source "/usr/local/Cellar/fzf/HEAD/shell/key-bindings.zsh"

# Set default command
export FZF_DEFAULT_COMMAND='ag -l -g ""'

# Customize colors
# https://github.com/junegunn/fzf/wiki/Color-schemes
export FZF_DEFAULT_OPTS='
--bind J:down,K:up
  --color fg:252,bg:233,hl:67,fg+:252,bg+:235,hl+:81
  --color info:144,prompt:161,spinner:135,pointer:135,marker:118
'

# fcs - get git commit sha
# example usage: git rebase -i `fcs`
fcs() {
  local commits commit q
  commits=$(
  git log --color=always --pretty=oneline --abbrev-commit --reverse \
    --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@") &&
  commit=$(echo "$commits" | fzf --tac +s +m -e --ansi --reverse) &&
  echo -n $(echo "$commit" | sed "s/ .*//")
}

fzf-fcs-widget() {
  LBUFFER="${LBUFFER}$(fcs)"
  zle redisplay
}

zle     -N   fzf-fcs-widget
bindkey '^G' fzf-fcs-widget

source "$yadr/zsh/fshow/gistfile1.sh"
zle     -N   fshow
bindkey '^S' fshow
