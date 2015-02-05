function mkcd(){
  mkdir $1 && cd $1
}

pbcopyfile () {
  if [ $# -eq 0 ]; then
    echo "pbcopyfile requires a filename"
    return 1;
  elif [ ! -f $1 ]; then
    echo "Can't copy contents because file $1 does not exist!"
    return 1;
  else
    cat $1 | pbcopy
    echo "Copied contents of $1 to clipboard!"
  fi
}
