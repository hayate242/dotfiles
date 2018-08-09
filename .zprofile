
# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=$PATH:/Users/hayate/.pyenv/versions/3.4.1/lib/python3.4/site-packages
export PATH=$PATH:/Applications/Kivy.app/Contents/Frameworks/python/3.5.0/lib/python3.5/site-packages/matplotlib

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

PATH=$PATH:$HOME/bin:/sbin:/usr/sbin:/usr/local/bin
export PATH

# for nodeJs
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

