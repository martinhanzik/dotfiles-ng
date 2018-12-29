
if [[ $(command -v npm) ]]; then
    . <(npm completion)
fi

if [[ $(command -v kubectl) ]]; then
    . <(kubectl completion zsh)
fi