alias l='ls'
alias la='ls -a'
alias ll='ls -alh'

alias df='df -h'

#alias v='vim'
alias sed='gsed'

alias ..='cd ..'
alias ..,..='cd ../..'
alias ..,..,..='cd ../../..'

__s=..
for ((i = 0; i < 12; ++i)); do
  alias "$__s"="cd $(echo $__s | sed 's/,/\//g')"
  __s+=,..
done
unset __s

#alias gentoo='ssh snfo@192.168.0.17'

alias c++98='clang++ -std=c++98 -Wall -Werror'

alias c++11='clang++ -std=c++11 -Wall -Werror'
alias c++11e='clang++ -std=c++11 -Wall -Werror -fno-exceptions -fno-rtti'

alias c++14='clang++ -std=c++14 -Wall -Werror'
alias c++14e='clang++ -std=c++14 -Wall -Werror -fno-exceptions -fno-rtti'

alias c++17='/usr/local/opt/llvm/bin/clang++ -std=c++17 -Wall'
