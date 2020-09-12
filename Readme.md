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

### Archivos CAD (solo .dxf)
LibreCAD
```
sudo pacman -Suy libreCad
```

