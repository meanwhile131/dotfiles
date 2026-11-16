export PATH="$HOME/.local/bin:$PATH"
if [[ "$(tty)" = "/dev/tty1" ]]; then
	start-hyprland
fi
# Added by Toolbox App
export PATH="$PATH:/home/sasha/.local/share/JetBrains/Toolbox/scripts"


if [ -e /home/sasha/.nix-profile/etc/profile.d/nix.sh ]; then . /home/sasha/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
. "/home/sasha/.deno/env"
export ANDROID_HOME=$HOME/Android/Sdk

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"


# Added by Antigravity CLI installer
export PATH="/home/sasha/.local/bin:$PATH"
