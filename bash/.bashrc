#!/bin/bash
#
#

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export BASH_OSX_DIR=~/.bash-osx

source $BASH_OSX_DIR/aliases
source $BASH_OSX_DIR/prompt
source $BASH_OSX_DIR/variables

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  . "$(brew --prefix)/etc/bash_completion";
fi;

# add nvm to command line
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh
