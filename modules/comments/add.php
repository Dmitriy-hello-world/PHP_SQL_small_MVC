<?php
if (isset($_POST['addComments'], $_POST['name-com'], $_POST['addSub'])) {
    if (!empty($_POST['addComments']) && !empty($_POST['name-com'])) {
        $query_com = "
        INSERT INTO `comments` SET
        `name` = '" . mysqli_real_escape_string($bd_link, $_POST['name-com']) . "',
        `date` = '" . date('Y-m-d H:i') . "',
        `text` = '" . mysqli_real_escape_string($bd_link, nl2br($_POST['addComments'])) . "'
        ";
        mysqli_query($bd_link, $query_com) or exit('ошибка тут: ' . mysqli_error($bd_link));
    }
}
