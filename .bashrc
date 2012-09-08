# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

alias grep='grep -E'
alias ls='ls -F --color=auto'
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'
alias mkdir='mkdir -v'
alias rmdir='rmdir -v'
alias rd='rm -rf'
alias chmod='chmod -v'
alias l='ls'
alias sl='ls'
alias ll='l -l'
alias la='ll -a'
alias g++='g++ -Wall'
alias gcc='gcc -Wall'
alias dstat='dstat -cdlmnpsy'

export TEXLIVE2011=/usr/local/texlive/2011
export TEXLIVE2011_BIN=$TEXLIVE2011/bin/i386-linux
export TEXLIVE2011_MAN=$TEXLIVE2011/texmf/doc/man
export TEXLIVE2011_INFO=$TEXLIVE2011/texmf/doc/info
export MYUSR=~/usr
export MYOPT=~/usr/opt
export GAEROOT=$MYOPT/google_appengine
export GOROOT=$MYOPT/go
export ANDROID=$MYOPT/android-sdk-linux

export PATH=$PATH:$MYUSR/bin:$TEXLIVE2011_BIN:$GAEROOT:$GOROOT/bin:$ANDROID/tools:$ANDROID/platform-tools
export LD_RUN_PATH=$LD_RUN_PATH:$MYUSR/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$MYUSR/lib
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$MYUSR/lib/pkgconfig
export MANPATH=$MANPATH:$TEXLIVE2011_MAN:$MYUSR/share/man
export INFOPATH=$INFOPATH:$TEXLIVE2011_INFO:$MYUSR/share/info


# bash-completion
[[ -f /etc/profile.d/bash-completion.sh ]] && source /etc/profile.d/bash-completion.sh