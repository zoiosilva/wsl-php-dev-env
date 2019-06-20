#!/bin/bash
sudo /etc/init.d/apache2 stop
sudo /etc/init.d/mysql stop

sudo unlink /mnt/c/www/zoiosilva
sudo unlink /mnt/c/www/halthmann
sudo unlink /mnt/c/www/drupal7/estude/sites
