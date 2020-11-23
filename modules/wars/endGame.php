<?php
if ($_SESSION['user'] <= 0) {
    $endGame = "К сожалению вы проиграли.. Но вы можете <a href='/?module=wars&page=main'>взять реванш</a>.";
    $_SESSION['comp'] = 20;
    $_SESSION['user'] = 15;
} elseif ($_SESSION['comp'] <= 0) {
    $endGame = "Вы выиграли!!!";
    $_SESSION['comp'] = 20;
    $_SESSION['user'] = 15;
}
