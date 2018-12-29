alias vim="nvim"

alias git="hub"
alias g="hub"

alias d="docker"
alias dc="docker-compose"
alias dm="docker-machine"

alias rm="trash"
alias ls="exa"
alias find="fd"
alias cat="bat"

# from oh-my-zsh/lib/clipboard
alias pbp="clippaste"
alias pbc="clipcopy"

alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"


##########
# DOCKER #
##########

DEFAULT_MACHINE="default"

dmu() {
    docker-machine start "${1:-${DEFAULT_MACHINE}}"
    eval $(docker-machine env "${1:-${DEFAULT_MACHINE}}")
    echo $DOCKER_HOST
}
dms() {
    docker-machine stop "${1:-${DEFAULT_MACHINE}}"
}
dme() {
    eval $(docker-machine env ${1:-${DEFAULT_MACHINE}})
    echo $DOCKER_HOST
}
dml() {
  eval $(docker-machine env -u)
}