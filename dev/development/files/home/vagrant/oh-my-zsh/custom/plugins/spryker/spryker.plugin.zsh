alias composer='php -d xdebug.remote_enable=0 composer.phar'
alias ci='php -d xdebug.remote_enable=0 composer.phar install'
alias cu='php -d xdebug.remote_enable=0 composer.phar update'

codecept () {
    APPLICATION_ENV=development APPLICATION_STORE=DE /data/shop/development/current/vendor/bin/codecept run $*
}

debug-console () {
    XDEBUG_CONFIG="remote_host=10.10.0.1" PHP_IDE_CONFIG="serverName=zed.spryker.dev" /data/shop/development/current/vendor/bin/console $*
}

console () {
    /data/shop/development/current/vendor/bin/console $*
}
