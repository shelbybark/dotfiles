platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
  platform='osx'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
  platform='freebsd'
fi

if [[ $platform == 'osx' ]]; then
    # fix snow leopard's inclusion of resource fork files in tar
    export COPYFILE_DISABLE=true
    export PATH=/usr/local/mysql/bin:/usr/local/sbin:$HOME/django-trunk/django/bin:$HOME/bin:/usr/local/bin:/Applications/android-sdk-mac_86/tools:$HOME/.gem/ruby/1.8/bin:/usr/local/git/libexec/git-core:usr/local/share/npm/bin:$PATH
    #export PATH=/usr/local/mysql/bin:/usr/local/sbin:$HOME/django-trunk/django/bin:$HOME/bin:/Applications/android-sdk-mac_86/tools:$HOME/.gem/ruby/1.8/bin:/usr/local/git/libexec/git-core:$PATH
    export ARCHFLAGS='-arch i386 -arch x86_64'
    #export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/usr/local/mysql/lib/"
    alias ls='ls -G'
    alias mate='~/bin/mate'
    alias mater='~/bin/mate .'
    alias vi='vim'
    alias vimr='mvim .'
    alias fd='fab production deploy'
    alias fds='fab production static_deploy'
    alias fdcs='fab production collect_static'
    alias fdm='fab production migrate'
    alias cw='compass watch'
    alias apacher='sudo apachectl graceful'
    alias mysql='/usr/local/mysql/bin/mysql'
    alias mysqladmin='/usr/local/mysql/bin/mysqladmin'
    alias pydir='python -c "from distutils.sysconfig import get_python_lib; print get_python_lib()"'
    alias webby='python -m SimpleHTTPServer 9000'
    alias openr='open .'
    alias screenr='screen -r'
    alias tmux='tmux -2'
    alias tmuxr='tmux attach'
    alias mutt='cd ~/Desktop && mutt'
    alias screenm="screen -S MVM -t MVM"
    alias mshell="mvm shell"
    alias sbshell="ssh shelbybark@localhost -A -p 2222"
    alias ssh-royalfine="ssh -p 2222 royal@royalfinecleaners.com"
    alias ssh-coltrane="ssh steven@204.15.50.55"
    alias ssh-parker="ssh steven@12.48.41.4"
    alias ssh-bniweb="ssh steven@12.48.41.5"
    alias ssh-bniweb04="ssh steven@204.15.50.51"
    alias ssh-davenport="ssh -i ~/.ssh/aws_key.pem ubuntu@ec2-174-129-107-142.compute-1.amazonaws.com"
    #alias ssh-boone-aws-temp="ssh -i ~/.ssh/boone.pem root@54.243.35.88"
    alias ssh-boone-aws-temp="ssh shelbybark@54.86.72.91"
    alias ssh-boone-aws-main="ssh -i ~/.ssh/boone.pem root@107.21.236.110"
    alias ssh-boone-aws-natchez="ssh -i ~/.ssh/boone.pem root@107.22.198.145"
    alias ssh-boone-aws-ads="ssh -i ~/.ssh/boone.pem ubuntu@54.243.66.233"
    alias ssh-boone-aws-new="ssh shelbybark@web03.boone.1ux.it"
    #alias ssh-boone-aws-admin="ssh shelbybark@10.53.3.40"
    alias ssh-boone-aws-admin="ssh shelbybark@adm01.boone.1ux.it"
    alias ssh-boone-aws-mag="ssh shelbybark@web02.boone.1ux.it"
    alias ssh-rpc-untangle="ssh root@10.1.1.1"
    alias cdf='cd `osascript -e "tell application \"Finder\" to if window 1 exists then if target of window 1 as string is not \":\" then get POSIX path of (target of window 1 as alias)"`'
		alias hcl-start="hcl start"
		alias hcl-stop="hcl stop"
		alias hcl-resume="hcl resume"
		alias hcl-note="hcl note"
		alias hcl-show="hcl show"
		alias hcl-aliases="hcl aliases"
		alias hcl-set="hcl set"
		alias hcl-unset="hcl unset"
		alias hcl-help="hcl --help"
		alias fwd="forward 8000 -c fwd.shelbybark.com"
		alias qlf="qlmanage -p "
		. '/usr/local/etc/bash_completion'
		#if [ -f $(brew --prefix)/etc/bash_completion ]; then
			#. $(brew --prefix)/etc/bash_completion
		#if [ -f `brew --prefix`/etc/bash_completion ]; then
			#. `brew --prefix`/etc/bash_completion
		#fi

fi
if [[ $platform == 'linux' ]]; then
    alias ls='ls --color'
    export PATH=/usr/local/sbin:$HOME/django-trunk/django/bin:$HOME/bin:/usr/local/bin:/Applications/android-sdk-mac_86/tools:$PATH
    export TERM=xterm-color
    alias ls='ls -G --color'
fi

set t_Co=256
#export TERM=xterm-color
#export TERM=xterm-256color
export TERM=screen-256color

alias ll='ls -hl'
alias lls='ll -S'
alias lla='ll -a'
alias rmpyc="find . -name '*.pyc' -print0|xargs -0 rm"
alias n='git status'
alias gd='git diff'
alias ga='git add'
alias gap='git add -p'
alias gaa='git add -A .'
alias gaau='git add -u'
alias gp='git push'
alias gst='git status'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gc='git commit -v'
alias gcm='git commit -vm'
alias gitprettylog="git log --pretty=format:'%C(yellow)%h%Creset %s %Cblue%d%Creset' --graph --decorate=full --all"
alias svnpull='git stash && git svn rebase && git stash apply'
alias svnpush='git stash && git svn dcommit && git stash apply'
alias topm="top -o rsize"
alias topc="top -o cpu"
alias clear-dns="dscacheutil -flushcache"

alias whatismyip='curl ifconfig.me'

alias sb-runserver='./manage.py runserver 0.0.0.0:8000'

alias sb-nginx="python manage.py runfcgi method=threaded host=127.0.0.1 port=8080 pidfile=project.pid minspare=4 maxspare=30 daemonize=false"

alias takeover="tmux detach -a"

alias base='source $HOME/.dotfiles/bash_scripts/base.sh'


source $HOME/.dotfiles/bash_scripts/z.sh




parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
#  PS1="\w\$(parse_git_branch) $ " 


if [ "$TERM" != 'dumb' ] && [ -n "$BASH" ] && [ -n "$PS1" ]
then
        if [ `/usr/bin/whoami` = 'root' ]
        then
                export PS1='\[\033[01;31m\]\h \[\033[01;34m\]\W$(parse_git_branch)\$ \[\033[00m\]'
                #export PS1='\[\033[01;31m\]\h \[\033[01;34m\]\W$(vcprompt) \$ \[\033[00m\]'
        else
            if [[ $platform == 'osx' ]]; then
                export PS1='\[\033[01;30m\]\u@\h \[\033[01;36m\]\W\[\033[01;30m\]$(parse_git_branch)\[\033[01;36m\]\$ \[\033[00m\]'
                #export PS1='\[\033[01;30m\]\u@\h \[\033[01;36m\]\W\[\033[01;30m\]$(vcprompt) \[\033[01;36m\]\$ \[\033[00m\]'
            fi
            if [[ $platform == 'linux' ]]; then
                export PS1='\[\033[01;32m\]\u@\h \[\033[01;36m\]\W\[\033[01;30m\]$(parse_git_branch)\[\033[01;36m\]\$ \[\033[00m\]'
                #export PS1='\[\033[01;30m\]\u@\h \[\033[01;36m\]\W\[\033[01;30m\]$(vcprompt) \[\033[01;36m\]\$ \[\033[00m\]'
            fi
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
#source $HOME/.dotfiles/virtualenvwrapper_bashrc
#source $HOME/.dotfiles/virtualenvwrapper-2.7.1/virtualenvwrapper.sh



# source ~/.git-completion.sh
source $HOME/.dotfiles/git-completion.sh

set EDITOR=vi

set -o vi

# set TERM xterm-256color; export TERM

# make tab cycle through commands instead of listing 
bind '"\t":menu-complete'


# TESTING
#if [ "$TERM" = "xterm" ] ; then
    #if [ -z "$COLORTERM" ] ; then
        #if [ -z "$XTERM_VERSION" ] ; then
            #echo "Warning: Terminal wrongly calling itself 'xterm'."
        #else
            #case "$XTERM_VERSION" in
            #"XTerm(256)") TERM="xterm-256color" ;;
            #"XTerm(88)") TERM="xterm-88color" ;;
            #"XTerm") ;;
            #*)
                #echo "Warning: Unrecognized XTERM_VERSION: $XTERM_VERSION"
                #;;
            #esac
        #fi
    #else
        #case "$COLORTERM" in
            #gnome-terminal)
                ## Those crafty Gnome folks require you to check COLORTERM,
                ## but don't allow you to just *favor* the setting over TERM.
                ## Instead you need to compare it and perform some guesses
                ## based upon the value. This is, perhaps, too simplistic.
                #TERM="gnome-256color"
                #;;
            #*)
                #echo "Warning: Unrecognized COLORTERM: $COLORTERM"
                #;;
        #esac
    #fi
#fi



#SCREEN_COLORS="`tput colors`"
#if [ -z "$SCREEN_COLORS" ] ; then
    #case "$TERM" in
        #screen-*color-bce)
            #echo "Unknown terminal $TERM. Falling back to 'screen-bce'."
            #export TERM=screen-bce
            #;;
        #*-88color)
            #echo "Unknown terminal $TERM. Falling back to 'xterm-88color'."
            #export TERM=xterm-88color
            #;;
        #*-256color)
            #echo "Unknown terminal $TERM. Falling back to 'xterm-256color'."
            #export TERM=xterm-256color
            #;;
    #esac
    #SCREEN_COLORS=`tput colors`
#fi
#if [ -z "$SCREEN_COLORS" ] ; then
    #case "$TERM" in
        #gnome*|xterm*|konsole*|aterm|[Ee]term)
            #echo "Unknown terminal $TERM. Falling back to 'xterm'."
            #export TERM=xterm
            #;;
        #rxvt*)
            #echo "Unknown terminal $TERM. Falling back to 'rxvt'."
            #export TERM=rxvt
            #;;
        #screen*)
            #echo "Unknown terminal $TERM. Falling back to 'screen'."
            #export TERM=screen
            #;;
    #esac
    #SCREEN_COLORS=`tput colors`
#fi

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

