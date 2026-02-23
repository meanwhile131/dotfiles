PS1="%(?..%F{red}[%?] )%F{green}➜  %F{cyan}%1~%f "
HISTFILE=~/.zsh_history
HISTSIZE=1000000000
SAVEHIST=1000000000
setopt appendhistory

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char

source ~/.zsh-history-substring-search.zsh
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

autoload -Uz compinit
compinit
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias sudo='doas'
setopt share_history
export EDITOR="nvim"

export VCPKG_ROOT="$HOME/.local/share/vcpkg"
export PATH=$PATH:~/.cargo/bin/:~/platform-tools:$VCPKG_ROOT

# automated stuff
if [ -e /home/sasha/.nix-profile/etc/profile.d/nix.sh ]; then . /home/sasha/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
. "/home/sasha/.deno/env"
PATH="/home/sasha/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/sasha/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/sasha/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/sasha/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/sasha/perl5"; export PERL_MM_OPT;
if [[ ":$FPATH:" != *":/home/sasha/completions:"* ]]; then export FPATH="/home/sasha/completions:$FPATH"; fi # deno
