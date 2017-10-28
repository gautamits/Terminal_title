#this .bashrc file renames terminal title as command executed
trap 'title=( $BASH_COMMAND ); if [ ${title[0]} = "sudo" ]; then echo -en "\033]0;${title[1]}\a"; else echo -en "\033]0;${title[0]}\a"; fi' DEBUG
PS1="\033[01m\033[32m\u\033[0m\033[34m\033[01m@\033[0m\\033[01m\033[91m\h\033[0m \033[36m\W\033[0m\033[93m>>>>\033[0m \033[01m"
