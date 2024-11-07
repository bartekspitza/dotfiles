parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="${PS1}\[\033[01;31m\]\$(parse_git_branch)\[\033[00m\] "
