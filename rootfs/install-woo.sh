#!/bin/bash
cd /opt/bitnami/wordpress/wp-content/plugins || exit

if [ -d "./akismet"]
then
  rm -rf akismet
fi

if [ -d "./all-in-one-seo-pack" ]
then
  rm -rf all-in-one-seo-pack
fi

if [ -d "./all-in-one-wp-migration" ]
then
  rm -rf all-in-one-seo-pack
fi

if [ -d "./google-analytics-for-wordpress" ]
then
  rm -rf all-in-one-seo-pack
fi

if [ -d "./jetpack" ]
then
  rm -rf all-in-one-seo-pack
fi

if [ -d "./simple-tags" ]
then
  rm -rf all-in-one-seo-pack
fi

if [ -d "./w3-total-cache" ]
then
  rm -rf all-in-one-seo-pack
fi

if [ -d "./wp-cloud-mgmt-console" ]
then
  rm -rf all-in-one-seo-pack
fi

if [ -d "./wp-mail-smtp" ]
then
  rm -rf all-in-one-seo-pack
fi

if [ -f "./hello.php" ]
then
  rm -rf all-in-one-seo-pack
fi

if [ -d "./WooOS-Storefront" ]
then
  rm -rf WooOS-Storefront
fi

echo "Cloning WooOS Storefront to plugins directory..."
git clone https://github.com/bornbrie/WooOS-Storefront.git
echo "Success"