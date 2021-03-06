source ~/.zplug/init.zsh

zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug "mafredri/zsh-async", defer:0
# zplug "sindresorhus/pure", use:pure.zsh, as:theme
zplug "chriskempson/base16-shell", use:"scripts/base16-solarflare-dark.sh", defer:0

zplug "djui/alias-tips"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2 # Should be loaded 2nd last.
zplug "zsh-users/zsh-history-substring-search", defer:3 # Should be loaded last.
zplug "chrissicool/zsh-256color"

zplug "junegunn/fzf", use:"shell/*.zsh"
zplug "zdharma/zsh-diff-so-fancy"

zplug "tysonwolker/iterm-tab-colors"

zplug "lib/clipboard", from:oh-my-zsh
zplug "plugins/aws", from:oh-my-zsh
zplug "plugins/cargo", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-machine", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/heroku", from:oh-my-zsh
zplug "plugins/mosh", from:oh-my-zsh
zplug "plugins/pyenv", from:oh-my-zsh
zplug "plugins/terraform", from:oh-my-zsh
zplug "plugins/vagrant", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

[ -f $ZDOTDIR/.zalias ] && source $ZDOTDIR/.zalias
