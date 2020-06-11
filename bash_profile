
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/xxie/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/xxie/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/xxie/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/xxie/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# <<< bash-git-prompt initialize >>>
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
# <<< bash-git-prompt initialize >>>

# <<< spectrome path >>>
export PYTHONPATH=$PYTHONPATH:~/lab/spectrome


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# <<< FREESURFER >>>
export FREESURFER_HOME=/Applications/freesurfer
source $FREESURFER_HOME/SetUpFreeSurfer.sh


# FSL Setup
FSLDIR=/usr/local/fsl
PATH=${FSLDIR}/bin:${PATH}
export FSLDIR PATH
. ${FSLDIR}/etc/fslconf/fsl.sh

# ANTs Setup
export ANTSPATH=~/ANTs_install/bin/
export PATH=${ANTSPATH}:$PATH

# MATLAB path
export PATH=/Applications/MATLAB_R2020a.app/bin/:$PATH

# TheFuck
eval $(thefuck --alias)

# Aliass:
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
