export PATH=/usr/local/sbin:$HOME/django-trunk/django/bin:$HOME/bin:/usr/local/bin:/Applications/android-sdk-mac_86/tools:$PATH
export TERM=xterm-color
alias ls='ls -G'
alias ll='ls -hl'
alias mate='~/bin/mate'
alias mater='~/bin/mate .'
alias vimr='mvim .'
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
alias screenr='screen -r'
alias cx="ssh-coptix-tunnels"
alias herod-ssh="ssh herod.hosts.coptix.com"
alias rove-ssh="ssh rove.hosts.coptix.com"
alias screenm="screen -S MVM -t MVM"
alias mshell="mvm shell"
alias topm="top -o rsize"
alias topc="top -o cpu"

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
                export PS1='\[\033[01;30m\]\u@\h \[\033[01;36m\]\W\[\033[01;30m\]$(parse_git_branch) \[\033[01;36m\]\$ \[\033[00m\]'
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


# source $HOME/Documents/customscripts/virtualenvwrapper_bashrc
# source /usr/local/bin/virtualenvwrapper_bashrc
source $HOME/.dotfiles/virtualenvwrapper_bashrc


# source ~/.git-completion.sh
source $HOME/.dotfiles/git-completion.sh

set EDITOR=vi

set -o vi

# set TERM xterm-256color; export TERM

# make tab cycle through commands instead of listing 
bind '"\t":menu-complete'


# TESTING
if [ "$TERM" = "xterm" ] ; then
    if [ -z "$COLORTERM" ] ; then
        if [ -z "$XTERM_VERSION" ] ; then
            echo "Warning: Terminal wrongly calling itself 'xterm'."
        else
            case "$XTERM_VERSION" in
            "XTerm(256)") TERM="xterm-256color" ;;
            "XTerm(88)") TERM="xterm-88color" ;;
            "XTerm") ;;
            *)
                echo "Warning: Unrecognized XTERM_VERSION: $XTERM_VERSION"
                ;;
            esac
        fi
    else
        case "$COLORTERM" in
            gnome-terminal)
                # Those crafty Gnome folks require you to check COLORTERM,
                # but don't allow you to just *favor* the setting over TERM.
                # Instead you need to compare it and perform some guesses
                # based upon the value. This is, perhaps, too simplistic.
                TERM="gnome-256color"
                ;;
            *)
                echo "Warning: Unrecognized COLORTERM: $COLORTERM"
                ;;
        esac
    fi
fi



SCREEN_COLORS="`tput colors`"
if [ -z "$SCREEN_COLORS" ] ; then
    case "$TERM" in
        screen-*color-bce)
            echo "Unknown terminal $TERM. Falling back to 'screen-bce'."
            export TERM=screen-bce
            ;;
        *-88color)
            echo "Unknown terminal $TERM. Falling back to 'xterm-88color'."
            export TERM=xterm-88color
            ;;
        *-256color)
            echo "Unknown terminal $TERM. Falling back to 'xterm-256color'."
            export TERM=xterm-256color
            ;;
    esac
    SCREEN_COLORS=`tput colors`
fi
if [ -z "$SCREEN_COLORS" ] ; then
    case "$TERM" in
        gnome*|xterm*|konsole*|aterm|[Ee]term)
            echo "Unknown terminal $TERM. Falling back to 'xterm'."
            export TERM=xterm
            ;;
        rxvt*)
            echo "Unknown terminal $TERM. Falling back to 'rxvt'."
            export TERM=rxvt
            ;;
        screen*)
            echo "Unknown terminal $TERM. Falling back to 'screen'."
            export TERM=screen
            ;;
    esac
    SCREEN_COLORS=`tput colors`
fi

