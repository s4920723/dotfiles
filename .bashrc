# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Environment variables
export PATH="${PATH}:${HOME}/.local/bin/"
export LD_LIBRARY_PATH="/opt/Autodesk/Adlm/R14/lib64/"
export MOUNT_DIR="/run/media/$USER"

# Aliases
alias ls='ls --color=auto'
alias nuke="exec /usr/local/Nuke11.2v3/Nuke11.2 --nc"
alias nukex="exec /usr/local/Nuke11.2v3/Nuke11.2 --nc --nukex"
alias nukestudio="exec /usr/local/Nuke11.2v3/Nuke11.2 --nc --studio"
alias wallpaper="exec ~/.scripts/wallpaper"
alias dmount="exec ~/.scripts/dmenumount"
alias dumount="exec ~/.scripts/dmenuumount"
alias ntfsmount="sudo mount -t ntfs-3g"
alias sdn="sudo shutdown now"
alias srn="sudo reboot now"
alias i3c="vim $HOME/.config/i3/config"
alias i3bc="vim $HOME/.config/i3/i3blocks.conf"
alias usb="cd $MOUNT_DIR"
alias discord="Discord"
alias mari="$HOME/Builds/bin_builds/Mari4.2v1/mari --nc"
alias bs="firefox brightspace.bournemouth.ac.uk &"
alias lock="~/Github/i3lock-color/lock.sh 4dff71cc 4dff71cc"
alias eq="pulseaudio-equalizer-gtk"
alias eqstat="pulseaudio-equalizer status | grep 'Equalizer status' "
alias deadlines="cat $HOME/Documents/uni/level06/deadlines"
alias todo="cat $HOME/Documents/TODO"
# Prompt
#PS1='[\u@\h \W]\$ ' backup PS1
PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;6m\]@\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\w\\$ \[$(tput sgr0)\]"
PATH=$PATH:$HOME/.scripts

# Renderman environment variables
export RMANTREE=/opt/pixar/RenderManProServer-22.1/
export PYTHONPATH=$PYTHONPATH:$RMANTREE/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/$RMANTREE/lib:/usr/lib/
export PATH=$PATH:/$RMANTREE/bin
export TERMINAL=st

# Allowing Ctrl-S and others to work
stty -ixon

# Allow Vi mode
set -o vi
