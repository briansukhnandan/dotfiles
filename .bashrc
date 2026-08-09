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

# A pretty shitty function to switch between different
# versions of Java i have on my system without worrying
# about updating my $PATH, env vars, etc.
#
# To add/rm a version, make sure to update the `case`
# and then update $JVM_COUNT such that the cycling can
# work properly
#
# Again, these are the Java paths i have on my Fedora
# machine, so adjust to your specifications.
JVM_INDEX=0
JVM_COUNT=3
JVM_PREVIOUS_HOME=""
jvmswitch() {
  case "$JVM_INDEX" in
    0)
      export JAVA_HOME="/usr/lib/jvm/java-25-openjdk"
      ;;
    1)
      export JAVA_HOME="/usr/lib/jvm/java-11-temurin-jdk"
      ;;
    2)
      export JAVA_HOME="/usr/lib/jvm/java-21-openjdk"
      ;;
  esac

  # Remove the previous Java installation from PATH
  # otherwise multiple Java dirs will go there and the left-most
  # one will win.
  if [[ -n "$JVM_PREVIOUS_HOME" ]]; then
    PATH="${PATH#"$JVM_PREVIOUS_HOME/bin:"}"
  fi

  # Put the new Java installation first
  # and store the one we just switched to
  # so when we re-invoke this command we know
  # what to rm from PATH.
  export PATH="$JAVA_HOME/bin:$PATH"
  JVM_PREVIOUS_HOME="$JAVA_HOME"

  echo "Switched to: $JAVA_HOME"
  java -version

  ((JVM_INDEX = (JVM_INDEX + 1) % JVM_COUNT))
}

export PATH="$PATH:$HOME/bin"
