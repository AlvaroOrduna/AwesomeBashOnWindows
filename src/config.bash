# Correct dir spellings
shopt -q -s cdspell

# Make sure display get updated when terminal window get resized
shopt -q -s checkwinsize

# Turn on the extended pattern matching features
shopt -q -s extglob

# Append rather than overwrite history on exit
shopt -s histappend

# Make multi-line commandsline in history
shopt -q -s cmdhist

# Append to the history file, don't overwrite it
shopt -s histappend

# Get immediate notification of background job termination
set -o notify

# Bash history will save 10000 commands
export HISTSIZE=10000

# Bash will remember 10000 commands
export HISTFILESIZE=${HISTSIZE}

# Ingore duplicates and spaces
export HISTCONTROL=ignoreboth

# Avoid duplicates in hisotry
export HISTIGNORE='&:[ ]*'

# Use less command as a pager
export PAGER=less

# Set nano as default text editor
export EDITOR=nano
export VISUAL=nano
export SVN_EDITOR="$VISUAL"
