#!/bin/sh

if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

if [ -f ~/bin/git-completion.bash ]; then
  . ~/bin/git-completion.bash
fi

if [ -f ~/bin/git-prompt.sh ]; then
  . ~/bin/git-prompt.sh
fi


export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
