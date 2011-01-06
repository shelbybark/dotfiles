# change directory to the base of your project
#
# # Your project base is the directory that contains
# # either _darcs or .git or .hg
#
# # to use as a command add to .zshrc or .bashrc
# # alias base='source <path/to/base.sh>
#
CUR=$(pwd);
while [ ! "$CUR" = "/" ]
do
    CUR=$(dirname "$CUR");
    ([ -d "$CUR/.hg" ] || [ -d "$CUR/.git" ] || [ -d "$CUR/_darcs" ]) && echo "Changing directory to $CUR" && cd "$CUR" && break  
done

