### Check the window size after each command ($LINES, $COLUMNS)
shopt -s checkwinsize

# Colorized Prompt
BLACK="\[\033[0;30m\]"
BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
CYAN="\[\033[0;36m\]"
RED="\[\033[0;31m\]"
PURPLE="\[\033[0;35m\]"
BROWN="\[\033[0;33m\]"
LGRAY="\[\033[0;37m\]"
DGRAY="\[\033[1;30m\]"
LBLUE="\[\033[1;34m\]"
LGREEN="\[\033[1;32m\]"
LCYAN="\[\033[1;36m\]"
LRED="\[\033[1;31m\]"
LPURPLE="\[\033[1;35m\]"
YELLOW="\[\033[1;33m\]"
WHITE="\[\033[1;37m\]"
NOCOLOR="\[\033[0m\]"

# Gladly adapted off reddit
PROMPT_COMMAND=smile_prompt
function smile_prompt {
    if [ "$?" -eq "0" ]
    then 
        # smiley
        SC="${GREEN}:)"
    else 
        # frowney
        SC="${RED}:("
    fi

    if [ $UID -eq 0 ] 
    then
        # root user make it red
        UC="${RED}"
    else
        # non root user keep it normal
        UC="${LBLUE}"
    fi

    # default color
    DF='\[\e[0m\]'
    PS1="${YELLOW}[\@] ${UC}\u@${LPURPLE}\h:\w ${SC} ${DF} "
}
#PS1="$YELLOW[\@] $LPURPLE\u@\h: \w> $CYAN"

# sweet sweet silence...
bind 'set bell-style none'
