cd
yay -S --noconfirm figlet lolcat
figlet PKGINSTALL INSTALLER | lolcat
# prompting for choice
read -p "Do you want to install the wrappers? (y)Yes/(n)No" choice
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
