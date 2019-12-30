#!/bin/bash

cd /opt/bitnami/wordpress/wp-content/plugins || exit

echo "Removing default plugins from WordPress installation..."
if [[ -d "./akismet" ]]
then
  rm -rf akismet
fi

if [[ -d "./all-in-one-seo-pack" ]]
then
  rm -rf all-in-one-seo-pack
fi

if [[ -d "./all-in-one-wp-migration" ]]
then
  rm -rf all-in-one-seo-pack
fi

if [[ -d "./google-analytics-for-wordpress" ]]
then
  rm -rf all-in-one-seo-pack
fi

if [[ -d "./jetpack" ]]
then
  rm -rf all-in-one-seo-pack
fi

if [[ -d "./simple-tags" ]]
then
  rm -rf all-in-one-seo-pack
fi

if [[ -d "./w3-total-cache" ]]
then
  rm -rf all-in-one-seo-pack
fi

if [[ -d "./wp-cloud-mgmt-console" ]]
then
  rm -rf all-in-one-seo-pack
fi

if [[ -d "./wp-mail-smtp" ]]
then
  rm -rf all-in-one-seo-pack
fi

if [[ -f "./hello.php" ]]
then
  rm -rf all-in-one-seo-pack
fi

if [[ -d "./WooStorefront" ]]
then
  rm -rf WooStorefront
fi

echo "Done"

echo "Cloning WooOS into plugins directory..."
git clone https://github.com/bornbrie/WooStorefront.git
echo "Success"