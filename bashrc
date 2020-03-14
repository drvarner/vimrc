# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
source /usr/share/git-core/contrib/completion/git-prompt.sh

# PS1
export PS1='[\[\e[36m\]\u\[\e[37m\]@\[\e[32m\]\h\[\e[34;01m\]\w\[\e[m\]]\[\e[35m\]$(__git_ps1 "(%s)")\[\e[37m\]\\$\[\e[m\] '
