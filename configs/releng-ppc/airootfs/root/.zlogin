# fix for screen readers
if grep -Fq 'accessibility=' /proc/cmdline &> /dev/null; then
    setopt SINGLE_LINE_ZLE
fi

if [ ! -f ~/.pacman-init.done ] && 
  systemctl start etc-pacman.d-gnupg.mount
  systemctl start pacman-init
  touch ~/.pacman-init.done
fi

~/.automated_script.sh
