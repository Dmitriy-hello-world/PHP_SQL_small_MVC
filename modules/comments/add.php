<?php
if (isset($_POST['addComments'], $_POST['name-com'], $_POST['addSub'])) {
    if (!empty($_POST['addComments']) && !empty($_POST['name-com'])) {
        $query_com = "
        INSERT INTO `comments` SET
        `name` = '" . mysqli_real_escape_string($bd_link, $_POST['name-com']) . "',
        `date` = '" . date('Y-m-d H:i:s') . "',
        `text` = '" . mysqli_real_escape_string($bd_link, $_POST['addComments']) . "'
        ";
        mysqli_query($bd_link, $query_com) or exit('ошибка тут: ' . mysqli_error($bd_link));
    }
    header("Location: /?module=main&page=main");
}
