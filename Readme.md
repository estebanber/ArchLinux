## python
### Pacman
Instalar librerías con pacman
´´´
sudo pacman -S python-'package'
´´´
### PIP
Si no con pip
´´´
sudo pip install 'python-package'
´´´
### Virtualenv
Instalar y usar entorno virtual
´´´
sudo pacman -S python-virtualenv
virtualenv -p /usr/bin/python3 yourenv
source yourenv/bin/activate
pip install package-name
´´´
