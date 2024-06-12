cd
yay -S --noconfirm figlet lolcat
figlet PKGINSTALL INSTALLER | lolcat
 read -p "DO YOU WANT TO START THE INSTALLATION NOW? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ":: Installation started."
            echo
        break;;
        [Nn]* ) 
            echo ":: Installation canceled."
            exit;
        break;;
        * ) echo ":: Please answer yes or no.";;
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
