PS1="%(?..%F{red}[%?] )%F{green}➜  %F{cyan}%1~%f "
HISTFILE=~/.zsh_history
HISTSIZE=1000000000
SAVEHIST=1000000000

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char

autoload -Uz compinit
compinit
alias dotf='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
export EDITOR="nvim"

export VCPKG_ROOT="$HOME/.local/share/vcpkg"
export PATH=$PATH:~/.cargo/bin/:$VCPKG_ROOT

# automated stuff
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"
if [ -e /home/sasha/.nix-profile/etc/profile.d/nix.sh ]; then . /home/sasha/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
PATH="/home/sasha/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/sasha/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/sasha/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/sasha/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/sasha/perl5"; export PERL_MM_OPT;
if [[ ":$FPATH:" != *":/home/sasha/completions:"* ]]; then export FPATH="/home/sasha/completions:$FPATH"; fi # deno

# pnpm
export PNPM_HOME="/home/sasha/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# NPM global bin (added by Qwen Code installer)
export PATH="$HOME/.npm-global/bin:$PATH"

# bun completions
[ -s "/home/sasha/.bun/_bun" ] && source "/home/sasha/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$PATH:$HOME/.dotnet/tools"
alias getidf=". ~/.espressif/esp-idf/export.sh"
alias cm="podman run -it --rm --userns=keep-id -e HOST_USER_ID=$(id -u) -e HOST_GROUP_ID=$(id -g) -v ~/.plastic4:/home/ubuntu/.plastic4 -v .:/home/ubuntu/wkspaces -v ~/.ssh:/home/ubuntu/.ssh plasticscm /usr/bin/cm"
bindkey '^[^?' backward-kill-word
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="$PATH:/var/lib/flatpak/exports/bin:~/.local/share/flatpak/exports/bin"
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH:$HOME/.local/share/pnpm/bin"
clear() {
    printf "\e[H\e[3J"
}
bindkey '^R' history-incremental-search-backward
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey '^[^?' backward-kill-word
bindkey '^[^H' backward-kill-word

# opencode
export PATH=/home/sasha/.opencode/bin:$PATH
alias dsh="pnpm dlx @deepseek-ai/dsh"


# Added by Antigravity CLI installer
export PATH="/home/sasha/.local/bin:$PATH"
