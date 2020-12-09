<?php
if (isset($_POST['inputLogin'], $_POST['inputPassword'], $_POST['inputSub'])) {
    if (!empty($_POST['inputLogin']) && !empty($_POST['inputPassword'])) {
        $inputSelect = "
        SELECT * FROM `users`
        WHERE `login` = '" . mysqli_real_escape_string($bd_link, $_POST['inputLogin']) . "' AND `password` = '" . mysqli_real_escape_string($bd_link, $_POST['inputPassword']) . "'
        ";
        $result = mysqli_query($bd_link, $inputSelect) or exit('Проблема тут: ' . mysqli_error($bd_link));
        if (mysqli_num_rows($result) == 1) {
            $row = mysqli_fetch_assoc($result);
            setcookie("userKey", $row['id'], time() + 3600 * 24 * 3, "/");
            header("Location: /?module=main&page=main");
        } else {
            $inputErrors = "Данного пользователя не существует!";
        }
    }
}
