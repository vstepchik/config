# Env
CARGO_HOME="$HOME/.cargo"
PATH="$PATH:$CARGO_HOME/bin"

# Misc
alias timestamp="date +\"%Y%m%d%H%M\""
alias date-iso8601="date -u +\"%Y-%m-%dT%H:%M:%SZ\""
alias shrug="echo '¯\_(ツ)_/¯'"
alias qr="qrencode -t ansiutf8"

# Command defaults
alias xclip="xclip -selection c"
alias dust="dust -br"

# GPU
alias gpu_on="sudo tee /proc/acpi/bbswitch <<< ON"
alias gpu_off="sudo tee /proc/acpi/bbswitch <<< OFF"
alias gpu_status="cat /proc/acpi/bbswitch"

# Functions
function pngpress() {
    find "$1" -iname '*.png'  | xargs -I % zopflipng -y --iterations=25 --filters=01234mepb --lossy_8bit --lossy_transparent % %
}

function genpass() {
    cat /dev/urandom | tr -dc '[:alnum:][:punct:]' | fold -w ${1:-20} | head -n 1 | tee /dev/tty | tr -d "\n" | xclip -sel clip
}

function objectid() {
    cat /dev/urandom | tr -dc 'a-f0-9' | fold -w 24 | head -n 1 | tee /dev/tty | tr -d "\n" | xclip -sel clip
}
