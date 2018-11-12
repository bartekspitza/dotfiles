### Prompt
# Git prompot modifier
parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

orange=$(tput setaf 166);
reset=$(tput sgr0);
PS1="\[${orange}\]\u";
PS1+="\w\[${reset}\]";
PS1+="\[\033[32m\]\$(parse_git_branch)\[\033[00m\]: ";
export PS1;

### Aliases
alias p3=python3;
alias vi=vim;
cd() { builtin cd "$@" && ls; }

bind 'set completion-ignore-case on';
