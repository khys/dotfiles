# bash_profile
export BASH_SILENCE_DEPRECATION_WARNING=1

# Language
export LANG=ja_JP.UTF-8

# PATH
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/go
PATH=/usr/local/sbin:$PATH
PATH=$PATH:$GOROOT/bin:$GOPATH/bin
PATH=$HOME/.jenv/bin:$PATH
PATH=$PATH:$HOME/.nodebrew/current/bin
PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
if [ -d $HOME/bin ] ; then
    PATH=$HOME/bin:$PATH
fi
if [ -d /Applications/CPLEX_Studio129/cplex/bin/x86-64_osx ] ; then
    PATH=$PATH:/Applications/CPLEX_Studio129/cplex/bin/x86-64_osx
elif [ -d /Applications/CPLEX_Studio_Community129/cplex/bin/x86-64_osx ] ; then
    PATH=$PATH:/Applications/CPLEX_Studio_Community129/cplex/bin/x86-64_osx
fi
export PATH
if which jenv &> /dev/null; then eval "$(jenv init -)"; fi
if which trash &> /dev/null; then alias rm='trash -r'; fi

# Load .bashrc
if [ -f $HOME/.bashrc ] ; then
    . $HOME/.bashrc
fi

# bash-completion 
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# git-completion
if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ] ; then
    source /usr/local/etc/bash_completion.d/git-prompt.sh
fi
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ] ; then
    source /usr/local/etc/bash_completion.d/git-completion.bash
fi

# Virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ] ; then
    export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
    source /usr/local/bin/virtualenvwrapper.sh
    export WORKON_HOME=~/.virtualenvs
fi

# google-cloud-sdk
if [ -f /usr/local/Caskroom/google-cloud-sdk ] ; then
    source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
    source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'
fi

# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=/Users/kazuki/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;

# alias
alias cp='cp -aip'
alias mv='mv -i'
alias wakeup='wakeonlan -i 10.0.0.2 3c:97:0e:14:08:88'
alias v4mtr='sudo mtr -n 8.8.8.8'
alias v6mtr='sudo mtr -n 2001:4860:4860::8888'


# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='pure'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
source "$BASH_IT"/bash_it.sh
