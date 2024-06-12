
yay -S --noconfirm figlet lolcat

figlet PKGINSTALL INSTALLER | lolcat

git clone https://github.com/starsprinter92/yay-wrappers/

cd yay-wrappers

chmod +x ./pkginstall.sh

sudo cp ./pkginstall.sh /usr/bin/pkginstall

chmod +x update.sh

sudo cp ./update.sh /usr/bin/update

chmod +x ./pkgsearch.sh

sudo cp ./pkgsearch.sh /usr/bin/pkgsearch

cd ..

rmdir --ignore-fail-on-non-empty ./yay-wrappers
