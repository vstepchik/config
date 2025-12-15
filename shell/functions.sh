function pngpress() {
  find "$1" -iname '*.png' | xargs -I % zopflipng -y --iterations=25 --filters=01234mepb --lossy_8bit --lossy_transparent % %
}

function genpass() {
  cat /dev/urandom | LC_CTYPE=C tr -dc '[:alnum:][:punct:]' | fold -w ${1:-20} | head -n 1 | tee /dev/tty | { command -v pbcopy >/dev/null 2>&1 && pbcopy || xclip -sel clip; }
}

function objectid() {
  cat /dev/urandom | LC_CTYPE=C tr -dc 'a-f0-9' | fold -w 24 | head -n 1 | tee /dev/tty | tr -d "\n" | { command -v pbcopy >/dev/null 2>&1 && pbcopy || xclip -sel clip; }
}

axel_insist() {
  local url="$1"
  if [[ -z "$url" ]]; then
    echo "Usage: $0 <URL>"
    return 1
  fi

  until axel -k "$url"; do
    echo "Download failed. Retrying in 1 second..."
    sleep 1
  done
}
