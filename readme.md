
# Ubuntu Setup

## Clone this repository
```bash
sudo apt install git
git clone https://github.com/choro0121/dotfile
cd dotfile
cp .gitconfig ~/.gitconfig
```

## Install utils
```bash
sudo apt install -y curl exa bat unzip
``

## `neovim`
```bash
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
git clone https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
cp -r .config/nvim ~/.config
```

### Install `neovim` plugin

run on neovin `:PackerInstall` and `:PackerCompile`

## `tmux`
```bash
sudo apt install -y tmux
cp .tmux.conf ~/.tmux.conf
```

## `fish`

```bash
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
cp -r .config/fish ~/.config
source ~/.config/fish/config.fish
```

### set default shell `fish`
```bash
chsh -s /usr/bin/fish
```

## `fisher`
```bash
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher update
```

## `fzf`
```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

