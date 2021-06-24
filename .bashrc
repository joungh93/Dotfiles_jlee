# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias gmt_root='ssh -X root@gmt.snu.ac.kr'
alias cosmos='ssh -X jlee@cosmos.snu.ac.kr'
alias dwarf='ssh -X jlee@dwarf.snu.ac.kr'
alias quasar='ssh -X jlee@quasar.snu.ac.kr'
alias virgo='ssh -X jlee@virgo.snu.ac.kr'
alias jdata='cd /data/jlee'
alias ds9='ds9 -scalemode zscale -scale lock yes -frame lock image'
alias astro='conda activate astroconda'
alias gemini='conda activate geminiconda'
alias deact='conda deactivate'
alias set_bc03='source /data/jlee/DATA/bc03/src/.bc_bash'
alias ds9v7='/home/jlee/Downloads/ds9 -scalemode zscale -scale lock yes -frame lock image'
alias jupy='jupyter notebook &'
alias starlink='source /home/jlee/Downloads/star-2018A/etc/profile'
alias eazy='/home/jlee/Downloads/eazy-1.00/src/eazy'
alias fast='/home/jlee/Downloads/FAST_v1.0/fast'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jlee/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jlee/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jlee/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jlee/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# added by fv 5.5
export PATH="/home/jlee/Downloads/fv5.5:$PATH"

# added by python3
export PYTHONSTARTUP="/home/jlee/.pythonrc"

# added by fsps
export SPS_HOME="/home/jlee/Downloads/fsps"

# added by Starlink
export STARLINK_DIR="/home/jlee/Downloads/star-2018A"

# added by FAST
source /usr/local/harris/idl86/bin/idl_setup.bash
