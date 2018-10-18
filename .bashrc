orange=$(tput setaf 166);
reset=$(tput sgr0);

PS1="\[${orange}\]\u";
PS1+="\w:\[${reset}\]";

export PS1;
