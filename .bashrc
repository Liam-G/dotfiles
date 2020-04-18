#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias clipboard='xclip -selection c'


source ~/.config/.git-prompt.sh

#PS1='[\u@\h \W]\$ '



PS1='\[\033[01;32m\]\u\[\033[01;33m\]@\[\033[01;34m\]\h\[\033[01;33m\]:\[\033[01;32m\]\W\[\033[01;31m\]$(__git_ps1) \[\033[01;33m\]▶\[\033[0m\] '

# PS1='\[\033[01;33m\]\u\[\033[01;31m\]@\[\033[01;34m\]\h\[\033[01;31m\]:\[\033[01;36m\]\W\[\033[1;32m\]\$\[\033[0;00m\] '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/liam/.anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/liam/.anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/liam/.anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/liam/.anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

