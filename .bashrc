alias open=xdg-open
alias update='sudo apt-get update && sudo apt-get upgrade -y'

function manytimes {
    n=0
    times=$1
    shift
    while [[ $n -lt $times ]]; do
        $@
        n=$((n+1))
    done
}
