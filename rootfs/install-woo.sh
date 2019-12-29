#!/bin/bash
cd /opt/bitnami/wordpress/wp-content/plugins || exit
if [ -d "./WooOS-Storefront" ]
then
  rm -r WooOS-Storefront
fi
echo "Cloning WooOS Storefront to plugins directory..."
git clone https://github.com/bornbrie/WooOS-Storefront.git
echo "Success"