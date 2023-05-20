#source this file with adding "source /path/to/polex-completition.bash" command to your ~/.bashrc file
#or just source it in the terminal with this command


_polex() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    local prev=${COMP_WORDS[COMP_CWORD-1]}

    if [[ $prev == "polex" ]]; then
        case "$cur" in
            -*)
                COMPREPLY=( $(compgen -W "-l --list -h --help -a --add -d --delete --conda --conda-packages -e --editor -julia" -- $cur) )
                ;;
            *)
                COMPREPLY=( $(compgen -W "$(find ~/Projects/*/* -maxdepth 0 -type d -printf '%f\n')" -- $cur) )
                ;;
        esac
    else
        case "$prev" in
            --conda)
                COMPREPLY=( $(compgen -W "$(find ~/Projects/* -maxdepth 0 -type d -printf '%f\n')" -- $cur) )
                ;;
            --conda-packages)
                COMPREPLY=( $(compgen -W "$(find ~/Projects/* -maxdepth 0 -type d -printf '%f\n')" -- $cur) )
                ;;
            -julia)
                COMPREPLY=( $(compgen -W "yes no" -- $cur) )
                ;;
            -*)
                COMPREPLY=( $(compgen -W "-l --list -h --help -a --add -d --delete --conda --conda-packages -e --editor -julia" -- $cur) )
                ;;
            *)
                COMPREPLY=( $(compgen -W "$(find ~/Projects/* -maxdepth 0 -type d -printf '%f\n')" -- $cur) )
                ;;
        esac
    fi
}
complete -F _polex polex


