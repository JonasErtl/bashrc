#
# ~/.bashrc
#


_set_my_PS1() {
	PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
}
_set_my_PS1
unset -f _set_my_PS1

HISTSIZE= HISTFILESIZE= #infinite history

function gc(){
    git commit -m "$*"
}

function gimme (){
  doas pacman -S "$@" 
} 


cut_file() {
  cp $1 $2 && rm -rf $1 
}

rename_dir() {
	mkdir $1 && cp -a /$2 . /$1 && rm -rf $1 
}

phind() {
  cd $(find * -type d | fzf)
}
#------------------------------------------------------------

## Aliases for the functions above.
## Uncomment an alias if you want to use it.
##

alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias la="ls -a"
alias pip="pip3"
alias python="python3"
alias sl="sl | lolcat"
alias sudo="doas"
alias lel="cowsay lel | lolcat"
alias c="clear"
alias claer="clear"
alias cler="clear"
alias cleara="clear"
alias clewr="clear"
alias clewar="clear"
alias clawer="clear"
alias clar="clear"
alias vim="nvim"
alias cx="cut_file" #used like cp
alias rnmdir="rename_dir"
alias clean="doas pacman -Sc && doas pacman -Scc && doas pacman -R $(pacman -Qdtq)"
alias phind="phind"
alias shred="shred -vzu"
# alias ef='_open_files_for_editing'     # 'ef' opens given file(s) for editing
# alias pacdiff=_Pacdiff
################################################################################
. "$HOME/.cargo/env"
