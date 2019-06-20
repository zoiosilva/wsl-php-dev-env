sudo cp -f /mnt/d/Dados/ubuntu/000-default.conf /etc/apache2/sites-available/
sudo /etc/init.d/apache2 restart


##########################

openssl req -newkey rsa:2048 -nodes -keyout d7sandbox.key -x509 -days 365 -out d7sandbox.crt -subj "/C=BR/ST=Mato Grosso do Sul/L=Dourados/O=Consizo/OU=Local Development/CN=*.zoiosilva.com"
openssl req -newkey rsa:2048 -nodes -keyout d8.key -x509 -days 365 -out d8.crt -subj "/C=BR/ST=Mato Grosso do Sul/L=Dourados/O=Consizo/OU=Local Development/CN=*.zoiosilva.com"

sudo cp d*.key /etc/apache2/ssl/
sudo cp d*.crt /etc/apache2/ssl/
