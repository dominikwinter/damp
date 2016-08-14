<?php

return [
    'debug'                 => false,
    'mode'                  => 'development',
    'save.handler'          => 'mongodb',
    'db.host'               => 'mongodb://mongo:27017',
    'db.db'                 => 'xhprof',
    'templates.path'        => dirname(__DIR__) . '/src/templates',
    'date.format'           => 'Y-m-d H:i:s',
    'detail.count'          => 12,
    'page.limit'            => 50,
    'profiler.enable'       => function () {
        return !strpos($_SERVER['REQUEST_URI'], 'xhgui');
    },
    'profiler.simple_url'   => function ($url) {
        return preg_replace('/\=\d+/', '', $url);
    },
];
