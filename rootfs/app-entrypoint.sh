#!/bin/bash -e

. /opt/bitnami/base/functions
. /opt/bitnami/base/helpers

print_welcome_page

if [[ "$1" == "nami" && "$2" == "start" ]] || [[ "$1" == "/init.sh" ]]; then
    . /apache-init.sh
    . /wordpress-init.sh
    nami_initialize apache php mysql-client wordpress
    . /install-woo.sh
    echo "Activating WooStorefront"
    su daemon -s /bin/bash -c '/opt/bitnami/wp-cli/bin/wp plugin activate WooStorefront'
    info "Starting wordpress... "
    . /post-init.sh
fi

exec tini -- "$@"
