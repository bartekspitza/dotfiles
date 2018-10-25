# Source .bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
# MongoDB Path
export PATH=$PATH:/usr/local/mongodb/bin
