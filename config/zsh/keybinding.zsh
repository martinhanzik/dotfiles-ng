if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
  function zle-line-init() {
    echoti smkx
  }
  function zle-line-finish() {
    echoti rmkx
  }
  zle -N zle-line-init
  zle -N zle-line-finish
fi

bindkey -e

# Alt+Backspace
backward-kill-dir () {
    local WORDCHARS=${WORDCHARS/\/}
    zle backward-kill-word
}
zle -N backward-kill-dir
bindkey "${terminfo[kbs]}" backward-kill-dir

bindkey "${terminfo[khome]}" beginning-of-line      # [Home] - Go to beginning of line
bindkey "${terminfo[kend]}"  end-of-line           # [End] - Go to end of line
bindkey "^[cmd-left" beginning-of-line      # [Cmd-Left] - Go to beginning of line
bindkey "^[cmd-right"  end-of-line           # [Cmd-Right] - Go to end of line