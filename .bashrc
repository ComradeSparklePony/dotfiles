#
# ~/.bashrc
#

[[ $- != *i* ]] && return

# Change the window title of X terminals
case ${TERM} in
	xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix|konsole*)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
		;;
	screen*)
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
		;;
esac

use_color=true

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

alias initiate_hacking_sequence='echo "INITIATING HACKING SEQUENCE" && sleep .5 && for i in {1..100}; do sleep .1 | echo "$i%"; done && echo "MAINFRAME BREACHED" && sleep 1.5 && echo "EXTRACTING FILES..." && sleep 3 && echo "EXTRACTION COMPLETE." && echo "CYBERNUKING THE FIREWALL" && say boom && echo "CYBERWALL DESTROYED" && sleep .5 && echo "INSERTING PAYLOAD" && sleep 2 && echo "PAYLOAD INSERTED" && echo "CREATING BACKDOOR" && sleep 6 && echo "BACKDOOR CREATED" && echo "PROCESS COMPLETED"'
export EDITOR=nvim
alias notes="nvim ~/Documents/notes"

