# Set default command
export FZF_DEFAULT_COMMAND='rg --files --smart-case -g "!{.git,node_modules}/*" -g "!*.{class,dumpstream}" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Customize colors
# https://github.com/junegunn/fzf/wiki/Color-schemes
export FZF_DEFAULT_OPTS='
--bind J:down,K:up
--color fg:188,bg:233,hl:103,fg+:222,bg+:234,hl+:104
--color info:183,prompt:110,spinner:107,pointer:167,marker:215
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

# fbr - git branch (including remote branches)
fbr() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  echo -n $(echo "$branch" | sed "s/.* //")
}

fzf-fbr-widget() {
  LBUFFER="${LBUFFER}$(fbr)"
  zle redisplay
}

zle     -N   fzf-fcs-widget
bindkey '^G' fzf-fcs-widget

source "$yadr/zsh/fshow/gistfile1.sh"
zle     -N   fshow
bindkey '^S' fshow

zle     -N   fzf-fbr-widget
bindkey '^B' fzf-fbr-widget
