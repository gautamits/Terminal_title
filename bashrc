#this .bashrc file renames terminal title as command executed
trap 'title=( $BASH_COMMAND ); if [ ${title[0]} = "sudo" ]; then echo -en "\033]0;${title[1]}\a"; else echo -en "\033]0;${title[0]}\a"; fi' DEBUG
