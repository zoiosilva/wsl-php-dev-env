#!/bin/bash
# Script de instalação completa do WSL Ubuntu. Copyright (c) 2019, Zoio Silva.

# BEGIN RODAR ESTE COMANDO ISOLADO ANTES DE RODAR O SCRIPT.
# sudo umount /mnt/c \
  # && sudo mount -t drvfs C: /mnt/c -o metadata,uid=1000,gid=1000 \
  # && sudo umount /mnt/d \
  # && sudo mount -t drvfs D: /mnt/d -o metadata,uid=1000,gid=1000
# END

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

#Ubuntu 18.04
PHP_VER="7.2"
MYSQL_ROOT="Root1234"
SRC_FOLDER="/mnt/c/g/gh/zoiosilva/wsl-php-dev-env/ubuntu"

PHP_PACKAGES=" \
    php$PHP_VER \
    php$PHP_VER-bcmath \
    php$PHP_VER-common \
    php$PHP_VER-cli \
    php$PHP_VER-curl \
    php$PHP_VER-dev \
    php$PHP_VER-gd \
    php$PHP_VER-intl \
    php$PHP_VER-json \
    php$PHP_VER-mbstring \
    php$PHP_VER-mysql \
    php$PHP_VER-soap \
    php$PHP_VER-xdebug \
    php$PHP_VER-xml \
    php$PHP_VER-zip \
    php-pear \
    php-uploadprogress \
"

GENERAL_PACKAGES=" \
    bsdtar \
    mysql-client \
    mysql-server \
    sendmail \
    subversion \
    ssh \
    unzip \
"

printf "\nSTEP: Preparando repositórios...\n"
sudo add-apt-repository -y ppa:ondrej/apache2
sudo add-apt-repository -y ppa:ondrej/php
sudo apt update

printf "\nSTEP: Atualizando pacotes nativos...\n"
sudo apt upgrade -yqq
sudo apt dist-upgrade -yqq

printf "\nSTEP: Atualizando o release do Ubuntu...\n"
sudo do-release-upgrade --quiet

# sh -c 'echo America/Campo_Grande > /etc/timezone && sudo dpkg-reconfigure -f noninteractive tzdata'

printf "\nSTEP: Instalando o php ${PHP_VER} e extensões...\n"
sudo apt install -yqq $PHP_PACKAGES

sudo phpenmod mbstring

printf "\nSTEP: Instalando outros pacotes adicionais...\n"
sudo apt install -yqq $GENERAL_PACKAGES

printf "\nSTEP: Configurando o básico sobre a segurança do MySql...\n"
sudo /etc/init.d/mysql start
sudo mysql -sfu root < $SRC_FOLDER/../sql/mysql_secure_installation.sql

printf "\nSTEP: Instalando o phpMyAdmin...\n"
sudo apt install -yqq phpmyadmin

#STEP: Atualização manual do PhpMyAdmin, conforme artigo 5...
sudo $SRC_FOLDER/phpmyadmin_update.sh

printf "\nSTEP: Instalando nodejs e npm...\n"
wget -qO- https://deb.nodesource.com/setup_10.x | sudo bash -
sudo apt install -yqq nodejs

printf "\nSTEP: Instalando Composer...\n"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --version=1.7.2
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

printf "\nSTEP: Instalando o Yarn e o Gulp...\n"
wget -qO- https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update -yqq && sudo apt install -yqq yarn
sudo npm install -g gulp

printf "\nSTEP: Configurando o php e o apache para mostrar tudo que é erro...\n"
sudo sed -i 's/display_errors = Off/display_errors = On/' /etc/php/$PHP_VER/apache2/php.ini
sudo sed -i 's/display_errors = Off/display_errors = On/' /etc/php/$PHP_VER/cli/php.ini
sudo sed -i 's/display_startup_errors = Off/display_startup_errors = On/' /etc/php/$PHP_VER/apache2/php.ini
sudo sed -i 's/display_startup_errors = Off/display_startup_errors = On/' /etc/php/$PHP_VER/cli/php.ini
sudo sed -i 's/error_reporting = E_ALL.*STRICT/error_reporting = E_ALL/' /etc/php/$PHP_VER/apache2/php.ini
sudo sed -i 's/error_reporting = E_ALL.*STRICT/error_reporting = E_ALL/' /etc/php/$PHP_VER/cli/php.ini
sudo sed -i 's/zend.assertions = -1/zend.assertions = 1/' /etc/php/$PHP_VER/apache2/php.ini
sudo sed -i 's/zend.assertions = -1/zend.assertions = 1/' /etc/php/$PHP_VER/cli/php.ini

printf "\nSTEP: Habilitando o mod rewrite do apache...\n"
sudo a2enmod rewrite

printf "\nSTEP: Criação do Symlink do repositório de trabalho para a pasta que será mapeada no Apache...\n"
sudo ln -s /mnt/c/g/gl/zoiosilva/ /mnt/c/www/zoiosilva
sudo ln -s /mnt/c/g/gl/halthmann/ /mnt/c/www/halthmann
sudo ln -s /mnt/c/g/gl/zoiosilva/estude-matematica/ /mnt/c/www/drupal7/estude/sites

printf "\nSTEP: Geração do certificado auto-assinado para poder habilitar SSL no Apache...\n"
cd ~
sudo openssl genrsa -out ca.key 2048
sudo openssl req -nodes -new -key ca.key -out ca.csr -subj "/C=BR/ST=Mato Grosso do Sul/L=Dourados/O=Consizo/OU=Local Development/CN=*.zoiosilva.com"
sudo openssl x509 -req -days 365 -in ca.csr -signkey ca.key -out ca.crt
sudo mkdir /etc/apache2/ssl
sudo cp ca.crt ca.key ca.csr /etc/apache2/ssl/
sudo cp /etc/apache2/ssl/ca.crt /etc/apache2/ssl/d8.crt
sudo cp /etc/apache2/ssl/ca.key /etc/apache2/ssl/d8.key
sudo cp /etc/apache2/ssl/ca.crt /etc/apache2/ssl/d7sandbox.crt
sudo cp /etc/apache2/ssl/ca.key /etc/apache2/ssl/d7sandbox.key
cd -

printf "\nSTEP: Configurando e habilitando o SSL no Apache...\n"
sudo a2enmod ssl
sudo cp -f $SRC_FOLDER/../apache-conf/000-default.conf /etc/apache2/sites-available/
sudo /etc/init.d/apache2 restart

printf "\nSTEP: Criação dos usuários padrão do banco...\n"
#Seguindo recomendações do artigo 4.
sudo mysql -uroot -p$MYSQL_ROOT < $SRC_FOLDER/../sql/user_setup.sql

printf "\nSTEP: Importação de backups do banco de dados da loja e do estudematematica...\n"
sudo mysql -uroot -p$MYSQL_ROOT wp_loja < $SRC_FOLDER/../sql/wp_loja.sql
sudo mysql -uroot -p$MYSQL_ROOT d7_estude < $SRC_FOLDER/../sql/d7_estude.sql

printf "\nSTEP: Configurando o git...\n"
git config --global user.name     "Zoio Silva"
git config --global user.email    "zoiosilva@yahoo.com.br"
git config --global core.safecrlf false
git config --global core.autocrlf true
git config --global alias.s       status
git config --global alias.co      checkout
git config --global alias.c       commit
git config --global alias.psu     'push --set-upstream origin'
git config --global alias.df      difftool
git config --global alias.uf      '!git fetch upstream && git checkout master && git merge upstream/master && git push && git pull --prune'
git config --global alias.pp      'pull -p'
git config --global alias.unstage 'reset HEAD --'
git config --global alias.fire    "!git add . && git commit -m 'FOGOOOO!!!' && git push"

printf "\nSTEP: Instalando e configurando o validador de padrão de código para php...\n"
composer global require "squizlabs/php_codesniffer=*" "wp-coding-standards/wpcs" "drupal/coder"
export PATH="~/.config/composer/vendor/bin:$PATH"
phpcs --config-set colors 1
phpcs --config-set installed_paths $HOME/.config/composer/vendor/wp-coding-standards/wpcs,$HOME/.config/composer/vendor/drupal/coder/coder_sniffer
phpcs --config-set php_version $(php -r "echo PHP_VERSION_ID;")
phpcs --config-set report_width auto
phpcs --config-set show_progress 1

printf "\nSTEP: Última atualização e limpeza dos pacotes...\n"
sudo apt update
sudo apt dist-upgrade -yqq
sudo apt autoremove -yqq
sudo apt clean -yqq

printf "\nFim do script.\n"
#FONTES:
#1.  https://ayesh.me/Ubuntu-PHP-7.2
#2.  https://medium.freecodecamp.org/setup-a-php-development-environment-on-windows-subsystem-for-linux-wsl-9193ff28ae83
#3.  https://lukasmestan.com/install-mcrypt-extension-in-php7-2/
#4.  https://www.digitalocean.com/community/tutorials/como-criar-um-novo-usuario-e-conceder-permissoes-no-mysql-pt
#5.  https://devanswers.co/manually-upgrade-phpmyadmin/
#6.  https://stackoverflow.com/questions/24270733/automate-mysql-secure-installation-with-echo-command-via-a-shell-script
#7.  https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-apache-in-ubuntu-18-04
#8   https://tecadmin.net/install-gulp-js-on-ubuntu/
#9   https://yarnpkg.com/lang/en/docs/install/#debian-stable
#10. https://kvz.io/blog/2013/11/21/bash-best-practices/
#11. https://serverfault.com/questions/855565/installing-and-configuring-phpmyadmin-completely-through-a-shell-script
