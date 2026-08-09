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

export PATH="$PATH:$HOME/bin"
