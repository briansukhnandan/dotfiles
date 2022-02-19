
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/brian/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/brian/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/brian/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/brian/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

PROMPT='%F{cyan}[%f%F{red}%n%f%F{yellow}@%f%F{green}m%f%F{green}e%f%F{blue}r%f%F{blue}c%f%F{magenta}y%f %F{red}%.%f%F{cyan}]%f %F{red}%%%f '

# aliases
alias c='clear'
alias docs='cd ~/Documents'
alias repos='cd ~/Documents/Git_Repositories'
alias mysql='/usr/local/mysql/bin/mysql'
alias run_mysql='mysql -u root -p'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# bazel
export PATH="$PATH:$HOME/bin"
