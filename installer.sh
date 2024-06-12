cd
rm -rf ./yay-wrappers
yay -S --noconfirm figlet lolcat
figlet PKGINSTALL INSTALLER | lolcat
while true; do
    read -p "Do you wish to install the wrappers? (y/n) - " yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) echo Canceled. && exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
git clone https://github.com/starsprinter92/yay-wrappers/
cd yay-wrappers
chmod +x ./pkginstall.sh
sudo cp ./pkginstall.sh /usr/bin/pkginstall
chmod +x update.sh
sudo cp ./update.sh /usr/bin/update
chmod +x ./pkgsearch.sh
sudo cp ./pkgsearch.sh /usr/bin/pkgsearch
chmod +x ./install.sh
sudo cp ./install.sh /usr/bin/installer
cd 
rm -rf ∼/yay-wrappers
