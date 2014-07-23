abduco-rename() {
    local abduco_dir="$HOME/.abduco"
    [[ -z "$1" ]] && return
    [[ -z "$ABDUCO_SESSION" ]] && return
    [[ ! -S "$abduco_dir/$ABDUCO_SESSION" ]] && return
    [[ -e "$abduco_dir/$1" ]] && return
    echo "mv \"$abduco_dir/$ABDUCO_SESSION\" \"$abduco_dir/$1\""
    mv "$abduco_dir/$ABDUCO_SESSION" "$abduco_dir/$1" && export ABDUCO_SESSION=$1
}
