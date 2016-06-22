# Source config script
. ~/.awesome_bash_on_windows/config.bash

# Source prompt script
. ~/.awesome_bash_on_windows/prompt.bash

# Source alias script
. ~/.awesome_bash_on_windows/alias.bash

# Source functions script
. ~/.awesome_bash_on_windows/functions.bash

# Autocomplete ssh commands
complete -W "$(echo `cat ~/.bash_history | egrep '^ssh ' | sort | uniq | sed 's/^ssh //'`;)" ssh
