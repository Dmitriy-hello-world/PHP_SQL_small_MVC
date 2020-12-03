<?php
error_reporting(-1);
ini_set('display_errors', 'on');
header('Content-Type: text/html; charset=utf-8');
date_default_timezone_set('Europe/Kiev');
session_start();
include_once "config.php";
include_once "./libs/defoult.php";
include_once "variables.php";

//BD link
$bd_link = mysqli_connect(BD_HOST, BD_LOGIN, BD_PASSWORD, BD_NAME);
mysqli_set_charset($bd_link, "utf8");

//router
include "./modules/" . $_GET['module'] . "/" . $_GET['page'] . ".php";
include "./skins/" . SKIN . "/index.tpl";
