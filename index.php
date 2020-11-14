<?php
error_reporting(-1);
ini_set('display_errors', 'on');
header('Content-Type: text/html; charset=utf-8');
session_start();
include_once "config.php";
include_once "./libs/defoult.php";
include_once "variables.php";

include "./modules/" . $_GET['module'] . "/" . $_GET['page'] . ".php";
include "./skins/" . SKIN . "/index.tpl";
