export PATH=/opt/local/bin:/opt/local/sbin:$HOME/django-trunk/django/bin:$HOME/bin:/usr/local/bin:$PATH
export TERM=xterm-color
alias ls='ls -G'
alias ll='ls -hl'
alias mate='~/bin/mate'
alias mater='~/bin/mate .'
alias rmpyc="find . -name '*.pyc' -print0|xargs -0 rm"
alias n='git status'
alias gd='git diff'
alias ga='git add'
alias gaa='git add .'
alias gp='git push'
alias gst='git status'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gc='git commit -v'
alias gcm='git commit -vm'
alias fd='fab production deploy'
alias apacher='sudo apachectl graceful'
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'
alias pydir='python -c "from distutils.sysconfig import get_python_lib; print get_python_lib()"'
alias openr='open .'
alias cx="ssh-coptix-tunnels"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
  }
#  PS1="\w\$(parse_git_branch) $ " 


if [ "$TERM" != 'dumb' ] && [ -n "$BASH" ] && [ -n "$PS1" ]
then
        if [ `/usr/bin/whoami` = 'root' ]
        then
                export PS1='\[\033[01;31m\]\h \[\033[01;34m\]\W$(parse_git_branch) \$ \[\033[00m\]'
        else
                export PS1='\[\033[01;33m\]\u@\h \[\033[01;36m\]\W\[\033[01;30m\]$(parse_git_branch) \[\033[01;36m\]\$ \[\033[00m\]'
        fi
fi




function directory_to_titlebar {
    local pwd_length=42  # The maximum length we want (seems to fit nicely
                         # in a default length Terminal title bar).

    # Get the current working directory.  We'll format it in $dir.
    local dir="$PWD"     

    # Substitute a leading path that's in $HOME for "~"
    if [[ "$HOME" == ${dir:0:${#HOME}} ]] ; then
        dir="~${dir:${#HOME}}"
    fi
    
    # Append a trailing slash if it's not there already.
    if [[ ${dir:${#dir}-1} != "/" ]] ; then 
        dir="$dir/"
    fi

    # Truncate if we're too long.
    # We preserve the leading '/' or '~/', and substitute
    # ellipses for some directories in the middle.
    if [[ "$dir" =~ (~){0,1}/.*(.{${pwd_length}}) ]] ; then  
        local tilde=${BASH_REMATCH[1]}
        local directory=${BASH_REMATCH[2]}
        
        # At this point, $directory is the truncated end-section of the 
        # path.  We will now make it only contain full directory names
        # (e.g. "ibrary/Mail" -> "/Mail").
        if [[ "$directory" =~ [^/]*(.*) ]] ; then
            directory=${BASH_REMATCH[1]} 
        fi
        
        # Can't work out if it's possible to use the Unicode ellipsis,
        # '…' (Unicode 2026).  Directly embedding it in the string does not
        # seem to work, and \u escape sequences ('\u2026') are not expanded.
        #printf -v dir "$tilde/\u2026$s", $directory"
        dir="$tilde/...$directory"
    fi

    # Don't embed $dir directly in printf's first argument, because it's 
    # possible it could contain printf escape sequences.
    printf "\033]0;%s\007" "$dir"
}

if [[ "$TERM" == "xterm" || "$TERM" == "xterm-color" ]] ; then
        export PROMPT_COMMAND="directory_to_titlebar"
fi


if [ -f "$HOME/bin/ssh-agent-start" ]; then
        . "$HOME/bin/ssh-agent-start"
fi




export WORKON_HOME=$HOME/code/ve


source $HOME/Documents/customscripts/virtualenvwrapper_bashrc

source ~/.git-completion.sh

set EDITOR=vi

set -o vi

set TERM xterm-256color; export TERM
