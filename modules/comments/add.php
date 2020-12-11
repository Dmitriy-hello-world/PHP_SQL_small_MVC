<?php
if (isset($_POST['addComments'], $_POST['addSub'])) {
    if (isset($userKey) && $userKey == $_COOKIE['userKey']) {
        if (!empty($_POST['addComments'])) {
            $query_com = "
            INSERT INTO `comments` SET
            `name` = '" . mysqli_real_escape_string($bd_link, $row['login']) . "',
            `date` = '" . date('Y-m-d H:i:s') . "',
            `text` = '" . mysqli_real_escape_string($bd_link, $_POST['addComments']) . "'
            ";
            mysqli_query($bd_link, $query_com) or exit('ошибка тут: ' . mysqli_error($bd_link));
        }
        header("Location: /?module=main&page=main");
    } else {
        header("Location: /?module=cab&page=main");
    }
}
