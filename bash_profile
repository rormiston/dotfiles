GLOBUS_LOCATION=/opt/ldg
export GLOBUS_LOCATION
if [ -f ${GLOBUS_LOCATION}/etc/globus-user-env.sh ] ; then
	. ${GLOBUS_LOCATION}/etc/globus-user-env.sh
fi

export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH="${PYENV_ROOT}/bin:${PATH}"
    eval "$(pyenv init -)"
fi


# Set up the command prompt
if [ "$PS1" ]; then
PS1='\W: '
fi

# Allow colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Export search path
export PATH=/Users/richormiston/anaconda/bin:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH

# Make command line shortcut for Sublime
export EDITOR='subl -w'

# MacPorts Installer addition on 2016-06-08_at_16:28:41: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Remember search history and recall with arrow keys
[[ -n "${key[Up]}"   ]] && bindkey "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey "${key[Down]}" down-line-or-beginning-search

# Convenient shortcuts
alias py=python3
alias it=itunes
alias lsd='ls -d */'

