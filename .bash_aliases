# Defaults:
HOME_DIR=$HOME

# Disable touchpad
#synclient touchpadoff=1

# Java JDK tools:
export PATH=$PATH:/usr/lib/jvm/ibm-java-x86_64-71/bin

# xterm 
alias xterm='xterm -font -*-*-*-*-*-*-18-*-*-*-*-*-*-* -geometry 132x24'

# Increase bash history size
export HISTFILESIZE=1000000000
export HISTSIZE=1000000

export HISTCONTROL=ignoredups:erasedups # no duplicate entries 
# shared options: check window size and append to history
shopt -s histappend 
shopt -s checkwinsize
export HISTIGNORE="&:ls:[bf]g:exit"

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# jazz/scm
#export PATH=$PATH:/opt/jazz/scmtools/eclipse
#alias lscm_login='lscm login -c -n jazz07 -r https://jazz07.rchland.ibm.com:17443/jazz -u davechri@us.ibm.com'

# fd find directory name and cd to directory
fd()                   
{
    cd `$HOME/bin/finddir . $*`    
}

export PATH=$HOME_DIR/bin:$PATH:/sbin:/usr/sbin:/usr/local/sbin

export PS1='\[\e]0;\w\a\]\[\e[32m\]\[\e[33m\]\w\[\e[0m\]\n\h$ '

# usage: tab <name>
tab()
{
	# Set windows tab name
	# usage: tab <name>
	export PS1='\[\]\[\e[32m\] \[\e[33m\]\w\[\e[0m\]\n\h$ '
	echo -ne "\e]2;$*\a"
}


# Set tab to the host name
HN=$(hostname)
tab ${HN%%.*}

export SUDO_ASKPASS=$HOME/bin/sudo_askpass.sh

# enabled ctl-s and ctl-q to suspend and resume output
stty ixon





