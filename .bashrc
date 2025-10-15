# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

. ~/.bash_aliases
. ~/.git-prompt.sh
# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
export PATH="/usr/local/cuda-12.8/bin:$PATH"

export LD_LIBRARY_PATH="/home/migio/Documents/olb/examples/forBeginners/airfoil2d/:$LD_LIBRARY_PATH"
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
rm -f ~/.var/app/com.spotify.Client/cache/spotify/Singleton*

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1=' \[\e[38;5;93;1m\]\u\[\e[0m\]@\[\e[38;5;129m\]\h\[\e[0m\] \w\[\e[38;5;70m\]${PS1_CMD1}\[\e[0m\] # '
export OMP_NUM_THREADS=4
