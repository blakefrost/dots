setopt prompt_subst
export PS1='%n@%m:%~ $(vcprompt)✪ '
export RPROMPT='$(ruby -e "print RUBY_VERSION")'

## Completions
autoload -U compinit
compinit -C

## case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

## Global options
setopt correct

## Spelling prompt
SPROMPT='zsh: correct '%R' to '%r' ? ([Y]es/[N]o/[E]dit/[A]bort) '

## Allow tabbing backwards through tab completion.
# From: http://bit.ly/aII3Fm
bindkey '^[[Z' reverse-menu-complete

# VI Keybindings
bindkey -v