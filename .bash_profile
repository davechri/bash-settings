# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home

export PATH

. .bash_aliases

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

source /usr/local/ibmcloud/autocomplete/bash_autocomplete
