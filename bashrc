#export PS1="\[\033[91m\]\u\[\033[0m\]\[\033[92m\]@\[\033[0m\]\[\033[94m\]\h\[\033[0m\]\[\033[92m\]:\[\033[0m\]\[\033[96m\]\w\[\033[0m\]\[\033[92m\]$\[\033[0m\] "

#export PS1="\u\[\033[92m\]@\[\033[0m\]\h\[\033[92m\]:\[\033[0m\]\w\[\033[92m\]$\[\033[0m\] "
export PS1="\u@\h:\w$ "
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_functions
fi
