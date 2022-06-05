#     _       _   ______ _ _             
#    | |     | | |  ____(_) |          	 
#  __| | ___ | |_| |__   _| | ___  ___ 
# / _` |/ _ \| __|  __| | | |/ _ \/ __|	Author : Noku
#| (_| | (_) | |_| |    | | |  __/\__ \ GitHub: github.com/NokuWasTaken
# \__,_|\___/ \__|_|    |_|_|\___||___/ These dotFiles are licensed under the GNU GPL v2 free use License
#

###############
# => EXPORT <=
###############

set fish_greeting
set EDITOR "nvim"

#######################
## => Startup Stuff <=
#######################

#####################################
# => Start ssh-agent and add ssh keys
#####################################

eval (ssh-agent -c)
ssh-add $HOME/.ssh/git

######################
# => Setup fish colors
######################

set fish_color_normal brpurple
set fish_color_autosuggestion '#8114b8'
set fish_color_command brpurple
set fish_color_error '#D11313'
set fish_color_paramm brpurple

################
# => Aliases <=
################

########
# => vim
########

alias vim='nvim'

########:w
# => Git
########

alias add='git add -u'
alias clone='git clone'
alias push='git push -u origin'

###############
# => Navigation
###############

alias ls='exa -al --group-directories-first --icons --color=always'

########
# => Fun
########

#########################
# > change sudo to please
#########################

alias please='sudo'

#####################
# > terminal rickroll
#####################

alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

#########################
# => EndOfScript Stuff
#########################

##########
# => clear
##########

clear

#######################
# => random colorscript
#######################

colorscript random

#############
# => Starship
#############

starship init fish | source

thefuck --alias | source
