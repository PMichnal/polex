#source this file with adding "source /path/to/polex-completition.bash" command to your ~/.bashrc file
#or just source it in the terminal with this command


_polex() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    local prev=${COMP_WORDS[COMP_CWORD-1]}
    if [[ $prev == "polex" ]]; then
        COMPREPLY=( $(compgen -W "$(find ~/Projects/*/* -maxdepth 0 -type d -printf '%f\n')" -- $cur) )
    else
        COMPREPLY=( $(compgen -W "$(find ~/Projects/* -maxdepth 0 -type d -printf '%f\n')" -- $cur) )
    fi
}
complete -F _polex polex
