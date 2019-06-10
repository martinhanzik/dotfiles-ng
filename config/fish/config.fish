source (dirname (status -f))/aliases.fish

set -gx EDITOR vim

set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PAGER less
set -gx LESS '-F -g -i -M -R -S -w -X -z-4'

if status --is-login
    source (dirname (status -f))/env.fish
end