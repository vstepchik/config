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
