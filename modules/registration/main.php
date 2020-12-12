<?php
if (isset($_POST['email'], $_POST['login'], $_POST['password'])) {
    if (empty($_POST['email'])) {
        $errors[] = "Заполните поле Email";
    } elseif (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
        $errors[] = "Введите коректный Email";
    }
    if (empty($_POST['login'])) {
        $errors[] = "заполните поле Логин";
    }
    if (empty($_POST['password'])) {
        $errors[] = "Заполните поле Пароль";
    }
}
if (isset($_POST['email'], $_POST['login'], $_POST['password']) && !isset($errors)) {
    $queryCheck = "
    SELECT * FROM `users`
    WHERE `login` = '" . $_POST['login'] . "'
    ";
    $result = mysqli_query($bd_link, $queryCheck) or exit('Проблема тут: ' . mysqli_error($bd_link));
    if (mysqli_num_rows($result) == 0) {
        $_SESSION['regOK'] = "regOK";
        $query = "INSERT INTO `users` SET
        `email` = '" . mysqli_real_escape_string($bd_link, $_POST['email']) . "',
        `login` = '" . mysqli_real_escape_string($bd_link, $_POST['login']) . "',
        `password` = '" . mysqli_real_escape_string($bd_link, $_POST['password']) . "'";
        mysqli_query($bd_link, $query) or exit("ошибка в: " . mysqli_error($bd_link) . " ");
        header("location: /?module=registration&page=main");
        exit();
    } elseif ($_POST['email'] == ADMINEMAIL && $_POST['login'] == ADMINLOGIN && $_POST['password'] == ADMINPASSWORD) {
        $_SESSION['regOK'] = "regOK";
        header("location: /?module=registration&page=main");
        exit();
    } else {
        $errors[] = "Пользователь с таким логином уже существует";
    }
}
