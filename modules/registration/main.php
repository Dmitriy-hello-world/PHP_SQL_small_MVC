<?php
if (isset($_POST['email'], $_POST['login'], $_POST['password']) && filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
    if (is_string($_POST['login'])) {
        if (is_numeric($_POST['password'])) {
            unset($errors);
            header("location: /?module=main&page=main");
        } else {
            $errors[] = "Пароль должен состоять только из цифр";
        }
    } else {
        $errors[] = "Логин должен состоять только из букв(как не странно)";
    }
}
