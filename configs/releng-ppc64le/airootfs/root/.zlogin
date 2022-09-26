# fix for screen readers
if grep -Fq 'accessibility=' /proc/cmdline &> /dev/null; then
    setopt SINGLE_LINE_ZLE
fi

pacman-key --init &>/dev/null
pacman-key --populate archpower &>/dev/null
[ ! $? -eq 0 ] && echo ':: Could not populate pacman keyring.'

~/.automated_script.sh
