export PATH="/usr/local/Cellar/git/2.17.2/bin:$PATH"
function _update_ps1() {
    export PS1="$(powerline-shell $?)"
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
source ~/.git-completion.bash



# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH


source ~/.bashrc
