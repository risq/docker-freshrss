#!/bin/bash
[[ ! -f /config/www/freshrss/index.php ]] && (git clone --branch 1.3.1-beta --depth 1 https://github.com/FreshRSS/FreshRSS.git /config/www/freshrss && \
chown -R abc:abc /config)

# opt out for autoupdates
[ "$ADVANCED_DISABLEUPDATES" ] && exit 0

cd /config/www/freshrss
git pull
chown -R abc:abc /config
