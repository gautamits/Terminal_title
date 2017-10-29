#this .bashrc file renames terminal title as command executed
trap 'title=( $BASH_COMMAND ); if [ ${title[0]} = "sudo" ]; then echo -en "\033]0;${title[1]}\a"; else echo -en "\033]0;${title[0]}\a"; fi' DEBUG
#PS1="\033[01m\033[32m\u\033[0m\033[34m\033[01m@\033[0m\\033[01m\033[91m\h\033[0m \033[36m\W\033[0m\033[93m>>>>\033[0m \033[01m"
PS1="\n\[\033[35m\]\$(/bin/date)\n\[\033[32m\]\w\n\[\033[1;32m\]\u \e[36m\h: \[\033[1;34m\]\$(/usr/bin/tty | /bin/sed -e 's:/dev/::'): \[\033[1;36m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files \[\033[1;33m\]\$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\033[0m\] -> \[\033[0m\]"
