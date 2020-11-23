<?php
if (isset($_POST['game-kick-button']) && isset($_POST['kick'])) {
    if ($_POST['kick'] == rand(1, 3)) {
        $_SESSION['user'] -= rand(2, 4);
        $KickMessage = "Противник увернулся и ударил вас в ответ!";
    } else {
        $_SESSION['comp'] -= rand(1, 3);
        $KickMessage = "Вы попали по противнику!";
    }
}
if ($_SESSION['comp'] <= 0 || $_SESSION['user'] <= 0) {
    header("location: /?module=wars&page=endGame");
}
