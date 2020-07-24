alias timestamp="date +\"%Y%m%d%H%M\""
alias date-iso8601="date -u +\"%Y-%m-%dT%H:%M:%SZ\""
alias xclip="xclip -selection c"
alias shrug="echo '¯\_(ツ)_/¯'"

function pngpress() {
    find "$1" -iname '*.png'  | xargs -I % zopflipng -y --iterations=25 --filters=01234mepb --lossy_8bit --lossy_transparent % %
}

function genpass() {
    cat /dev/urandom | tr -dc '[:alnum:][:punct:]' | fold -w ${1:-20} | head -n 1 | tee /dev/tty | tr -d "\n" | xclip -sel clip
}
