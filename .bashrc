# Bashrc

# If not running interactively return
[[ $- != *i* ]] && return

export PATH=$HOME/bin:$PATH
export HISTCONTROL=ignoreboth:erasedups

# Shell options
shopt -s autocd         # change to named directory
shopt -s cdspell        # autocorrects cd misspellings
shopt -s cmdhist        # save multi-line commands in history as single line
shopt -s histappend     # do not overwrite history
shopt -s expand_aliases # expand aliases

# Prompt
PS1=' $PWD \n >_'

# Alias
alias l='ls'
alias la='ls -A'
alias ll='ls -lA'
alias ls='ls --color=auto'
alias update='sudo pacman -Syyu'
alias pacman='sudo pacman --color auto'
alias merge='xrdb -merge ~/.Xresources'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias mirrors='sudo reflector --score 100 --fastest 25 --sort rate --save /etc/pacman.d/mirrorlist --verbose'



# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh


wal -i /home/wotalim/Pictures/Solar.png
clear
