# ZSH Configuration #

### Environment Variables ###

# Setup Path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:.:~/bin

# Include gem directory in path and setup RVM. Also add current directory to path.
export PATH=`gem env gemdir`:$PATH

# RE: Lion Rubies Breaks Ruby and RVM
# > Notes for Darwin ( Mac OS X )
# >   For Lion, Rubies should be built using gcc rather than llvm-gcc. Since
# >   /usr/bin/gcc is now linked to /usr/bin/llvm-gcc-4.2, add the following to
# >   your shell's start-up file: export CC=gcc-4.2
# >   (The situation with LLVM and Ruby may improve. This is as of 07-23-2011.)
export CC=gcc-4.2

# Initialize rebenv
eval "$(rbenv init -)"

# Configure node
export NODE_PATH=/usr/local/lib/node

# Hold onto history for a while.
export HISTSIZE=1000

# Ruby
export RUBYLIB="lib:test"

# Configure Prompt
export PROMPT='%n@%m:%~ $(vcprompt -f "[%s:%b] ") $(printn "★ " $(job_count)) '
export RPROMPT='$(rbenv version | cut -d " " -f 1 | sed "s/-/ /g")'

### Other Configurations ###

# :nodoc:
setopt prompt_subst

## Completions
autoload -U compinit
compinit -C

## case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

## Global options
setopt correct

## Use extended globbing
setopt extendedglob

## Allow interactive comments
setopt interactivecomments

## Spelling prompt
SPROMPT='zsh: correct '%R' to '%r' ? ([Y]es/[N]o/[E]dit/[A]bort) '

## Allow tabbing backwards through tab completion.
# From: http://bit.ly/aII3Fm
bindkey '^[[Z' reverse-menu-complete

# Set editors
EDITOR=vim; export EDITOR
VISUAL=mvim; export VISUAL

# VI Keybindings
bindkey -v
