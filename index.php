<?php
session_start();
spl_autoload_register("autoloadClass");
function autoloadClass($className)
{
    if (preg_match('/Controller$/', $className)) {
        require("controller/$className.php");
    } else {
        require("model/$className.php");
    }
}

$controller = new RouterController();
$controller->process(array($_SERVER['REQUEST_URI']));
