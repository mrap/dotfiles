# Makes git auto completion faster favouring for local completions
__git_files () {
    _wanted files expl 'local files' _files
}

clonerepo () {
  if [ "$#" -ne 1 ]; then
    echo "Pass a git url to clone."
    return 0
  fi

  local url=$1
  local repo_path=$(echo $url | awk -F"/|\.git$" '{print $3"/"$4"/"$5}')
  local repo_dir=$HOME/$repo_path

  git clone $url $repo_dir && cd $repo_dir
}
