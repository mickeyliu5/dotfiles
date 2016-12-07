## ============================================================================
##                           Environment Variables
## ============================================================================
export GTEST_COLOR=yes
export EDITOR=vi

# Reduce delay to 0.1 seconds for switching to normal mode with ESC
export KEYTIMEOUT=1

PATH=$HOME/bin
PATH=$PATH:/Users/yuanyuanliu/anaconda2/bin
PATH=$PATH:/opt/bb/bin
PATH=$PATH:/bb/bin
PATH=$PATH:/opt/swt/bin
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:/bin
PATH=$PATH:/sbin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/sbin

# You may need to manually set your language environment
export LANG=en_US.UTF-8
#export LANG=en_US.UTF

export HTTP{,S}_PROXY=""
export http{,s}_proxy=""
export no_proxy=""

## ============================================================================
##                                 Settings
## ============================================================================
# Unmap ctrl-s as "stop flow"
#stty stop undef

# Vim mode.  Remove to default to emacs style keys.
#set -o vi

umask 022
# Update winsize after each command for better line-wrapping
#shopt -s checkwinsize
#git checkout auto complete script
source /Users/yuanyuanliu/dotfiles/git-completion.bash
## ============================================================================
##                                  Prompt
## ============================================================================
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1="\u@\h \[\033[32m\]\W\[\e\033[33m\]\$(parse_git_branch)\[\033[00m\] $"
export PS1="\[\033[32m\]\w\[\e\033[33m\]\$(parse_git_branch)\[\033[00m\] $"
#PS1='\[\e[1;31m\][\u@\h: \w]\[\e[0m\]\$(parse_git_branch)\[\033[00m\]'