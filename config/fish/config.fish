source (dirname (status -f))/aliases.fish
source (dirname (status -f))/completions.fish

set -gx EDITOR vim

set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PAGER less
set -gx LESS '-F -g -i -M -R -S -w -X -z-4'

if status --is-login
    source (dirname (status -f))/env.fish
end

source (dirname (status -f))/path.fish

function __direnv_export_eval --on-variable PWD
    status --is-command-substitution; and return
    eval (direnv export fish)
end

direnv hook fish | source

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish

eval (starship init fish)

# rvm default

bass source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
bass source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"

# status --is-interactive; and pyenv init - | source
# status --is-interactive; and pyenv virtualenv-init - | source


source /usr/local/opt/asdf/libexec/asdf.fish

set -gx HOMEBREW_GITHUB_API_TOKEN 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
