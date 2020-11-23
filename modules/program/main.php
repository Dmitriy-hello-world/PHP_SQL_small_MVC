<?php
$link = $_GET['link'];
$dir = $_SERVER['DOCUMENT_ROOT'] . "/" . $link;
$dirArr = scandir($dir);
