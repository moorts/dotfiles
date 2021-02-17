# Config file locations

nvim_config="$HOME/.config/nvim/"
zsh_config="$HOME/.zshrc"

# All things neovim
mkdir --parents $nvim_config
cp ./nvim/init.vim $nvim_config

# Install nvim (this sucks)
wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage && ./nvim.appimage --appimage-extract

# Install nodejs for coc-nvim (autocompletion plugin)
sudo apt install nodejs

# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install zsh and oh-my-zsh

sudo apt update -y && sudo apt upgrade -y
sudo apt install curl -y
sudo apt install zsh -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ./zsh/.zshrc $zsh_config

# Installing zsh plugins
git clone https://github.com/jeffreytse/zsh-vi-mode $HOME/.oh-my-zsh/custom/plugins/zsh-vi-mode

source $HOME/.zshrc

