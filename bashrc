# .bashrc

include () {
    [[ -f "$1" ]] && source "$1"
}

platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
    platform='mac'
fi

PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH

if [[ "$platform" == 'mac' ]]; then
    PATH=$PATH:/usr/local/opt/coreutils/libexec/gnubin
    PATH=$PATH:/Users/bpeterman/go/bin
    PATH=$PATH:/Users/bpeterman/.cargo/bin
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS1="\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] "

# User specific aliases and functions
if [[ "$platform" == 'mac' ]]; then
    alias ls="command ls -G" 
fi

if [ -f /etc/debian_version ]; then
    alias ls="command ls --color"
fi

eval $( dircolors -b $HOME/.ls_colors )

include  ~/.aliases
include ~/.host
