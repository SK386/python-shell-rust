#! /bin/sh
echo "welcome to my script $USER"
echo "would you like to insert custom packages? insert yes or no"
read answer
if [ $answer == "yes" ];
then
echo "your choose is $answer"
echo "do you prefer use pacman or yay?"
read package_manager
if [ $package_manager == "pacman" ];
then

function pac(){
	echo "Insert  packages names: "
	read pkg;
	sudo pacman -S $pkg --noconfirm
}

pac

elif [ $package_manager == "yay" ];
then
  
function yayf(){
	echo "Insert  packages names: "
	read pkg;
	yay install $pkg --noconfirm
}
yayf

fi

else
function default(){
echo "installation started"
sudo pacman -S  curl wget nodejs vim micro  nitrogen ranger --noconfirm
sudo pacman -S rustup evince whois speedtest alsamixer --noconfirm
sudo pacman -S flatpak simplescreenrecoder electrum transmission-cli --noconfirm
sudo pacman -S transmission-gtk firefox openssh gufw ufw --noconfirm
sudo pacman -S flatpak git --noconfirm
sudo pacman -S fakeroot make gcc --noconfirm
echo "pacman installation finish"

function flat(){

echo "starting flatpaks installations"
# packages for install
# packages list
# - tor browser: web browser
# - bitwarden: password manager
# - bisq: descentralized exchange
# - brave browser: web browser for surface
# - simplenote: notepad
flatpak install flathub com.github.micahflee.torbrowser-launcher network.bisq.Bisq com.bitwarden.desktop com.brave.Browser
flatpak install flathub com.simplenote.Simplenote
echo "flatpak finish"
}
flat

function gitc(){
#my .vimrc customization
git clone https://github.com/SK386/sk_vimrc.git
cp $HOME/sk_vimrc/vimrc $HOME/
cp -r $HOME/sk_vimrc/vim $HOME/
mv vim/ .vim/
mv vimrc .vimrc
#vim-lug
git clone https://github.com/junegunn/vim-plug.git
# dracula theme
mkdir -p ~/.vim/pack/themes/start
cd ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git dracula
echo "installed vimrc"
echo "open your .vimrc -> command mode -> PlugInstall -> Enter"
echo "after all vim's plugins are installed"
#yay for aur
cd $HOME
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si PKGBUILD --noconfirm
cd $HOME
echo "yay  - AUR package manager - Installed"
}
gitc

function yayi(){
yay -S ttf-ms-fonts --noconfirm
yay -S onlyoffice-bin --noconfirm
yay -S element-desktop-git --noconfirm
}
yayi
function mdir(){
cd $HOME/"Documentos"/
mkdir -p "canal" "sesi" "senai" "programação"
cd "sesi"/
mkdir -p "biologia" "filosofia" "historia" "literatura" "quimica" "ed fisica"

mkdir -p "fisica"

mkdir -p "inglês" "matematica" "redação" "espanhol" "geografia" "jornada"

mkdir -p "português" "sociologia"

cd $HOME
mkdir -p richmond programacao
}
mdir
}
default
fi
