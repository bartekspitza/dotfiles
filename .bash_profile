
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
export PATH=$PATH:/usr/local/mongodb/bin

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

orange=$(tput setaf 166);
reset=$(tput sgr0);



PS1="\[${orange}\]\u";
PS1+="\w\[${reset}\]";
PS1+="\[\033[32m\]\$(parse_git_branch)\[\033[00m\]: ";

export PS1;
