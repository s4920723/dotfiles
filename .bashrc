# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH:$HOME/.scripts:$HOME/Qt/Tools/QtCreator/bin:$HOME/Qt/5.12.0/gcc_64/bin"

# Python Modules path
PYTHONPATH="/usr/lib64/python2.7/"

# USD Environment Variables
PYTHONPATH="$PYTHONPATH:/usr/local/USD/lib/python/"
PATH="$PATH:/usr/local/USD/bin/"

export PATH
export PYTHONPATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# Flatpak shortcuts
alias spotify="flatpak run com.spotify.Client"
alias discord="flatpak run com.discordapp.Discord"
alias vlc="flatpak run org.videolan.VLC"
# Shutdown/reboot shortcuts
alias sdn="sudo shutdown now"
alias srn="sudo reboot now"
# Wallpaper script shortcut
alias wallpaper="exec $HOME/.scripts/wallpaper"
# DNF shortcuts
alias dnfs="sudo dnf search"
alias dnfi="sudo dnf install"
alias dnfl="sudo dnf list"
alias dnfr="sudo dnf remove"
alias dnfu="sudo dnf update"
# Brightspace shortcut
alias bs="firefox brightspace.bournemouth.ac.uk"
# Print To-do list
alias todo-="cat $HOME/Documents/todoLists/todo-avet"
alias todo-mc="cat $HOME/Documents/todoLists/todo-mc"
alias todo-fmp="cat $HOME/Documents/todoLists/todo-fmp"
alias todo-in="cat $HOME/Documents/todoLists/todo-in"
alias todo-avet="cat $HOME/Documents/todoLists/todo-avet"
alias deadlines="cat $HOME/Documents/todoLists/deadlines"
# File browser
alias naut="nautilus"
# xfce4 compositor toggle
alias comp="xfconf-query --channel=xfwm4 --property=/general/use_compositing --type=bool --toggle"
# University project folders
alias inov="cd $HOME/Documents/uni/level06/innovations"
alias fmp="cd $HOME/Documents/uni/level06/major_project"
alias avet="cd $HOME/Documents/uni/level06/AVET"
alias ast="cd $HOME/Documents/uni/level06/AST"
alias mc="cd $HOME/Documents/uni/level06/masterclass"
# Edit WM config files shortcuts
alias i3config="vim $HOME/.config/i3/config"
alias i3blocksconfig="vim $HOME/.config/i3/i3blocks.conf"
alias obconfig="vim $HOME/.config/openbox/rc.xml"
# Kill compositor
alias killcomp="killall compton"
# Maya license paths
export LD_LIBRARY_PATH=/opt/Autodesk/Adlm/R14/lib64/:/usr/local/lib
# RenderMan Vars
export RMANTREE=/opt/pixar/RenderManProServer-22.5
export PATH=$PATH:/$RMANTREE/bin
# Prompt
PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;6m\]@\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\w\\$ \[$(tput sgr0)\]"

# Allow Vi mode
set -o vi
