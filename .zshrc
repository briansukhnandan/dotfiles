# Rainbow prompt
PROMPT='%F{cyan}[%f%F{red}%n%f%F{yellow}@%f%F{green}m%f%F{green}e%f%F{blue}r%f%F{blue}c%f%F{magenta}y%f %F{red}%.%f%F{cyan}]%f %F{red}%%%f '

# Useful utility
alias dt='cd ~/Desktop'
alias c='clear'
alias docs='cd ~/Documents'
alias please='sudo'
alias repos='cd ~/Git'

# The famous 3-step workflow from Jason Trigg.
# $REPO is the path to a Git repo on your system
alias g32="git reset --soft HEAD~1"
alias g21="cd ; cd $REPO ; git restore --staged ."
alias g31="g32; g21"

# Assumes the python venv/ directory is 
# just named venv/
alias venv="source venv/bin/activate"

# Brings the current dev-branch to it's
# latest commit SHA.
rdb() {
  if [ -z "$1" ]; then
    echo "Usage: resetdevbranch <branch>"
    return 1
  fi

  git fetch
  git reset --hard "origin/$1"
}

# Go into a docker container by SHA
gointo () {
  docker exec -it $1 sh
}

export PATH="$PATH:$HOME/bin"
