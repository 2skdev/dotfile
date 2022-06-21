
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
sudo apt install -y curl exa bat
echo 'alias cat="batcat"' >> .bashrc
echo 'alias ls="exa --icons"' >> .bashrc
echo 'alias ls="exa -ahl --icons"' >> .bashrc
```

### Manually install `exa`
```bash
sudo apt install -y unzip

EXA_VERSION="v0.10.1"
EXA_LINUX_ZIP="exa-linux-x86_64-${EXA_VERSION}.zip"
wget https://github.com/ogham/exa/releases/download/${EXA_VERSION}/${EXA_LINUX_ZIP}

unzip ${EXA_LINUX_ZIP} -d exa
sudo cp ./exa/bin/exa /usr/bin/exa
rm -rf exa ${EXA_LINUX_ZIP}
```

## `z`
```bash
git clone https://github.com/rupa/z.git ~/.local/z
echo 'source ~/.local/z/z.sh' >> .bashrc
```

## `neovim`
```bash
sudo apt install -y python3-neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cp -r .config/nvim ~/.config/
```

### Install `neovim` plugin

run on neovin `:PlugInstall`

## `starship`
```bash
curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> .bashrc
cp .config/starship.toml ~/.config/
```

## `tmux`
```bash
sudo apt install -y tmux
cp .tmux.conf ~/.tmux.conf
```
