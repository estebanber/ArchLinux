ACTUALPATH=$(pwd)

# Linkear archivos y carpetas que van en config
ln -s ${ACTUALPATH}/nvim ~/.config/nvim
ln -s ${ACTUALPATH}/fish ~/.config/fish
ln -s ${ACTUALPATH}/alacritty.yml ~/.config/alacritty.yml
ln -s ${ACTUALPATH}/autorandr ~/.config/autorandr
ln -s ${ACTUALPATH}/autostart ~/.config/autostart
ln -s ${ACTUALPATH}/awesome ~/.config/awesome
ln -s ${ACTUALPATH}/rofi ~/.config/rofi
ln -s ${ACTUALPATH}/cava ~/.config/cava
ln -s ${ACTUALPATH}/ranger ~/.config/ranger

# Linkear archivos y carpetas que van en el home
ln -s ${ACTUALPATH}/.gitconfig ~/.gitconfig
