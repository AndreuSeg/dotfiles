#! /bin/bash

sudo apt update -y

## Varios
sudo apt install git -y
sudo apt install php -y
sudo apt install neofecth -y
sudo apt install htop -y
sudo apt install neovim -y
sudo apt install ranger -y
## Varios

## Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
php composer-setup.php --install-dir=bin --filename=composer
sudo mv composer.phar /usr/local/bin/composer
## Composer

## Docker
read -p "Esta docker instalado [y/n]" docker
if [ $docker == y ]; then
	echo "Ok"
else
	sudo apt update -y
	sudo apt install -y docker.io -y
	sudo systemctl enable docker --now
	sudo usermod -aG docker $USER
	sudo apt install docker-compose -y
fi
## Docker

## VSCode
read -p "Esta instalado VSCode [y/n]" code
if [ $code == y ]; then
	echo "Ok"
else
	sudo apt-get install wget gpg -y
	wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
	sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
	sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
	sudo rm -f packages.microsoft.gpg
	sudo apt install apt-transport-https -y
	sudo apt update -y
	sudo apt install code -y
fi
## VSCode

## Brave
read -p "Esta instalado brave? [y/n]" brave
if [ $brave == y]; then
	echo "Ok"
else
	sudo apt install curl -y
	sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
	sudo apt update -y
	sudo apt install brave-browser -y
fi
## Brave

## Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
rustup override set stable
rustup update stable
## Rust

## Go
wget https://go.dev/dl/go1.20.5.src.tar.gz
sudo rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.5.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
sleep 2
## Go

## bat & lsd
wget https://github.com/lsd-rs/lsd/releases/download/0.23.1/lsd_0.23.1_amd64.deb
sudo pkg -i lsd_0.23.1_amd64.deb
wget https://github.com/sharkdp/bat/releases/download/v0.23.0/bat_0.23.0_amd64.deb
sudo dpkg -i bat_0.23.0_arm64.deb
## bat & lsd

## Alacritty
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 -y
cargo build --release
infocmp alacritty
## Alacritty

## starship
curl -sS https://starship.rs/install.sh | sh
## starship

## Vim Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
## Vim Plug

## Plugins ZSH
git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh-syntax-highlighting 

