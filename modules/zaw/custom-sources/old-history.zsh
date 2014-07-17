zmodload zsh/parameter

function zaw-src-old-history() {
    zmodload zsh/mapfile
    candidates=( "${(f@)mapfile[$HOME/.zsh_history.optimized]}" )
    #candidates=("${(@f)$(cat ~/.zsh_history.optimized)}")
    actions=("zaw-callback-execute" "zaw-callback-replace-buffer" "zaw-callback-append-to-buffer")
    act_descriptions=("execute" "replace edit buffer" "append to edit buffer")
    options=("-r" "-m")

    if (( $+functions[zaw-bookmark-add] )); then
        # zaw-src-bookmark is available
        actions+="zaw-bookmark-add"
        act_descriptions+="bookmark this command line"
    fi
}

zaw-register-src -n old-history zaw-src-old-history

