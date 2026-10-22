source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

alias vim nvim

fish_add_path /usr/local/texlive/2026/bin/x86_64-linux

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/moorts/.ghcup/bin $PATH # ghcup-env

set -x MANPAGER 'nvim +Man!'
set -x EDITOR nvim
