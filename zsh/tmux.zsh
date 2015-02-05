
# Improves tmux command so that `tmux` doesn't
# implicitly create and join an anonymous session.
# That's annoying and borderline useless.
# Instead, it joins your latest session and provides better messages
tmux () {
  # If any arguments given, tmux as usual
  if [ "$#" -gt 0 ]; then
    command tmux "$@"
    return 0
  fi

  # No server yet? Let them know how to start one
  if ! command tmux info &> /dev/null; then
    echo "No tmux server. You need to start one first.\nTry creating a new session: 'tmux new -s <session-name>'"
    return 0
  fi

  # Already inside a tmux a session? List out tmux commands using less to make it easy
  ATTACHED_SESSION_COUNT=$(command tmux list-sessions | sed -n '/(attached)/s/:.*//p' | wc -l)
  if [ $ATTACHED_SESSION_COUNT -gt 0 ]; then
    command tmux list-commands | less
  else
    command tmux attach
  fi
}

alias tm='tmux'
alias tmnew='tm new -s '
alias tmatt='tm attach -t '
alias tmdet='tm detach'
