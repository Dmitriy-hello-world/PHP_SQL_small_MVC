<?php
error_reporting(-1);
ini_set('display_errors', 'on');
header('Content-Type: text/html; charset=utf-8');
session_start();
include "config.php";
include "./libs/defoult.php";
include "variables.php";

include "./skins/defoult/" . $_GET['page'] . ".tpl";