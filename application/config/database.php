<?php
defined('BASEPATH') or exit('No direct script access allowed');
$active_group = 'default';
$query_builder = true;
$db['default'] = [
    'dsn'   => '',
    'hostname' => (getenv('MYSQLHOST') ?: (getenv('DB_HOSTNAME') ?: 'localhost')),
    'username' => (getenv('MYSQLUSER') ?: (getenv('DB_USERNAME') ?: 'u288005209_swt')),
    'password' => (getenv('MYSQLPASSWORD') ?: (getenv('DB_PASSWORD') ?: 'Qra@mugarte123')),
    'database' => (getenv('MYSQLDATABASE') ?: (getenv('DB_DATABASE') ?: 'u288005209_swt')),
    'port'     => (getenv('MYSQLPORT') ?: 3306),
    'dbdriver' => 'mysqli',
    'dbprefix' => '',
    'pconnect' => false,
    'db_debug' => (ENVIRONMENT !== 'production'),
    'cache_on' => false,
    'cachedir' => '',
    'char_set' => 'utf8',
    'dbcollat' => 'utf8_general_ci',
    'swap_pre' => '',
    'encrypt' => false,
    'compress' => false,
    'stricton' => false,
    'failover' => [],
    'save_queries' => true
];
