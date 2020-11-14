<?php
// page = main
if (!isset($_GET['page'])) {
    $_GET['page'] = "main";
}

// copy const
if (date('Y') == YEARSSTART) {
    $copyrite = YEARSSTART;
} else {
    $copyrite = YEARSSTART . " - " . date("Y");
}

//modules in my site
$modules = array("main", "wars", "program", "registration", "errors");

//module = main or go to 404
if (!isset($_GET['module'])) {
    $_GET['module'] = 'main';
} elseif (!in_array($_GET['module'], $modules)) {
    header("location: /modules/defoult/errors/404.php");
    exit();
}

//get ADMIN KEY
if (isset($_POST['email'], $_POST['login'], $_POST['password'])) {
    if ($_POST['email'] == "easportstng@gmail.com" && $_POST['login'] == "DimaAdmin" && $_POST['password'] == "4444") {
        if ($_SERVER['REMOTE_ADDR'] == "127.0.0.1") {
            setcookie("AdminKey", "DimaPridurok28", time() + 3600 * 24 * 3);
        }
    }
}
