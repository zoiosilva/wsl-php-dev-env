#!/bin/bash
PHPMYADMIN_VER="4.9.0.1"

printf "\nSTEP: Atualização manual do PhpMyAdmin...\n"
sudo mv /usr/share/phpmyadmin/ /usr/share/phpmyadmin.bak
sudo mkdir /usr/share/phpmyadmin/
cd /usr/share/phpmyadmin/
sudo wget https://files.phpmyadmin.net/phpMyAdmin/$PHPMYADMIN_VER/phpMyAdmin-$PHPMYADMIN_VER-all-languages.tar.gz
sudo tar xzf phpMyAdmin-$PHPMYADMIN_VER-all-languages.tar.gz
sudo mv phpMyAdmin-$PHPMYADMIN_VER-all-languages/* /usr/share/phpmyadmin
sudo sed -i -e "s/define\('TEMP_DIR', '.*'\);/define\('TEMP_DIR', '\/var\/lib\/phpmyadmin\/tmp\/'\);/g" /usr/share/phpmyadmin/libraries/vendor_config.php
sudo sed -i -e "s/cfg\['blowfish_secret'\] = '.*';/cfg\['blowfish_secret'\] = 'YMTiykG83RsaWAXSj4KpMPnl4ZojHXxV';/g" /usr/share/phpmyadmin/config.sample.inc.php
sudo mv /usr/share/phpmyadmin/config.sample.inc.php /usr/share/phpmyadmin/config.inc.php
sudo rm /usr/share/phpmyadmin/phpMyAdmin-$PHPMYADMIN_VER-all-languages.tar.gz
sudo rm -rf /usr/share/phpmyadmin/phpMyAdmin-$PHPMYADMIN_VER-all-languages
sudo rm -rf /usr/share/phpmyadmin.bak
sudo mkdir /usr/share/phpmyadmin/tmp
sudo chmod 777 /usr/share/phpmyadmin/tmp
cd -

printf "\nPhpMyAdmin atualizado!\n"

#FONTES:
# https://devanswers.co/manually-upgrade-phpmyadmin/
