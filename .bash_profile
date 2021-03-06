[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session

# Show folder in tabs
if [ $ITERM_SESSION_ID -a -z "$PROMPT_COMMAND" ]; then
  # export PROMPT_COMMAND="echo -ne "${PWD##*/}"; ":"$PROMPT_COMMAND";
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
shopt -s histappend dotglob


# Required
export EDITOR=vim
alias vi=vim
alias h="history|grep "
alias f="find . |grep "
alias p="ps aux |grep "
alias a="alias  |grep "
alias c="clear"
alias fing="sudo"

# Quick edit
alias oh='   sudo vim /etc/hosts'
alias ossh=' sudo vim /Users/sbolton/.ssh/config'
alias ovim=" vim ~/.vimrc"
alias obash="vim ~/.bash_profile"
alias sbash="source ~/.bash_profile; clear"
alias bog="  bundle open"
alias opry=" vim ~/.pryrc"

# Servers
alias ssnr="sudo service nginx restart"
alias ssrn="sudo systemctl restart nginx"
alias sshr="sudo service httpd restart"
alias ssar="sudo service apache2 restart"
alias saws="ssh ec2-user@aws"
alias sd="  ssh ubuntu@34.209.33.85"
alias sp="  ssh ubuntu@aws_news"
alias jsp=" ssh ubuntu@aws_tj"

# Time
alias retime="sudo ntpdate time.nist.gov"
alias msttime="sudo rm /etc/localtime; sudo ln -s /usr/share/zoneinfo/America/Denver /etc/localtime"
alias fixtime="sudo timedatectl set-timezone America/Denver"

# Movement
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."

# ls aliases
alias ll="ls -lh"
alias la="ls -lah"
alias ls="ls -la"

[[ -s "$HOME/dot_files/include/git_aliases" ]]        && source "$HOME/dot_files/include/git_aliases"
[[ -s "$HOME/dot_files/include/rails_aliases" ]]      && source "$HOME/dot_files/include/rails_aliases"
[[ -s "$HOME/dot_files/include/capistrano_aliases" ]] && source "$HOME/dot_files/include/capistrano_aliases"
[[ -s "$HOME/dot_files/include/solr_aliases" ]]       && source "$HOME/dot_files/include/solr_aliases"
[[ -s "$HOME/dot_files/include/functions" ]]          && source "$HOME/dot_files/include/functions"
#[[ -s "$HOME/dot_files/include/_aliases" ]] && source "$HOME/dot_files/include/_aliases"

# Better terminal output
source ~/.git-prompt.sh
export PS1="\e[1;36m\]Bolton: \e[0;31m\W\e[m\e[0;32m\$(__git_ps1)\e[0;33m\]$ \e[0;37m\]"

#DNS cache clear ioX 10.9
alias clear_dns="sudo killall -HUP mDNSResponder"
