<?php
namespace think;


define('APP_PATH', __DIR__ . '/tp5/application/');

require __DIR__ . '/tp5/thinkphp/base.php';



Container::get('app')->path(APP_PATH)->run()->send();


