
TMOUT=86400
PATH=/usr/bin:/usr/local/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin:/opt/OpenSSH/bin:/opt/OpenSSH/bin:/usr/X/bin:/usr/local/opt/php56/bin/
SHELLBASE=`ps -eaf | awk '{print $2, $NF}' | grep "^$$ " | sed -e 's/.*\(bash\)/\1/g'`

id=`id | sed -e 's/^uid=\([0-9]*\).*/\1/'`

# Set the prompt
if [ "$id" = "0" ]; then
        if [ "$SHELLBASE" = "bash" -o "$SHELLBASE" = "bashrc" ]; then
                PS1='\[\017\e]0;\h\007\e[0m\e[32m\]\[\e[31m\]\h\[\e[32m\]:$PWD\n\[\e[31m\]# \[\e[0m\]'
        else
                PS1=''`uname -n`':$PWD # '
        fi

else
        if [ "$SHELLBASE" = "bash" ]; then
                PS1='\[\017\e]0;\h\007\e[0m\e[33m\]\h:$PWD\n$ \[\e[0m\]'
        else
                PS1=''`uname -n`':$PWD $ '
        fi
fi

stty erase ^?
stty erase ^H
set -o vi


