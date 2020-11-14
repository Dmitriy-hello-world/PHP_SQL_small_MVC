<?php
if (!isset($_GET['page'])) {
    $_GET['page'] = "main";
}
if (date('Y') == YEARSSTART) {
    $copyrite = YEARSSTART;
} else {
    $copyrite = YEARSSTART . " - " . date("Y");
}
$modules = array("main", "wars", "program", "regiatration", "errors");
if (!isset($_GET['module'])) {
    $_GET['module'] = 'main';
} elseif (!in_array($_GET['module'], $modules)) {
    header("location: /modules/defoult/errors/404.php");
    exit();
}
