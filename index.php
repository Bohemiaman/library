<?php
session_start();
mb_internal_encoding("UTF8");
spl_autoload_register("autoloadClass");
function autoloadClass($className)
{
    if (preg_match('/Controller$/', $className)) {
        require("controller/$className.php");
    } else {
        require("model/$className.php");
    }
}
Db::makeConnection("127.0.0.1", "library", "root", "");
$controller = new RouterController();
$controller->process(array($_SERVER['REQUEST_URI']));
