## python
### Pacman
Instalar librerías con pacman
```
sudo pacman -S python-'package'
```
### PIP
Si no con pip
```
sudo pip install 'python-package'
```
### Virtualenv
Instalar y usar entorno virtual
```
sudo pacman -S python-virtualenv
virtualenv -p /usr/bin/python3 yourenv
source yourenv/bin/activate
pip install package-name
```
## MariaDB
```
sudo pacman -S mariadb
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl start mariadb
sudo mysql
```
```
CREATE DATABASE nyxiot
CREATE USER 'django'@'localhost' IDENTIFIED BY 'django';
GRANT ALL PRIVILEGES ON nyxiot.* TO 'django'@'localhost';
FLUSH PRIVILEGES;
quit
```

## Visor de imágnes
Ristretto
```
sudo pacman -Suy ristretto tumbler
```
Shotwell
Organizador de fotos
```
sudo pacman -Suy shotwell
```


### Archivos CAD (solo .dxf)
LibreCAD
```
sudo pacman -Suy libreCad
```
### NeoVim
pacman -S neovim
#### Plugins
iamcco/clock.nvim
powerline/powerline
itchyny/lightline.vim


### SpaceVim (configuraciones muy copadas)
curl -sLf https://spacevim.org/install.sh | bash
curl -sLf https://spacevim.org/install.sh | bash -s -- --uninstall

## Arch packages
xsel xclip python python-pip python-neovim udisks2 udiskie ntfs-3g htop nnn neofetch
## Terminales
xfce4-terminal
Alacritty
## Shell
zsh
ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

plugins:
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

## Automontaje de unidades externas
udiskie -t & 
## Musica
Pragha: Reproductor de música liviano
sudo pacman -S pragha
Deadbeef: Reproductor de música liviano
sudo pacman -S deadbeef


# Sincronización de archivos
##Syncthing
sudo pacman -S syncthing
Ejecutar servicio como usuario:
systemctl start/enable syncthing --user
##Dropbox
yay -S dropbox
