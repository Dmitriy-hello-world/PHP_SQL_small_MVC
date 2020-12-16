<?php
$deletequery = "
DELETE FROM `goals`
WHERE `id` = " . $_GET['id'] . " AND `name` = '" . $row['login'] . "'
";
mysqli_query($bd_link, $deletequery) or exit('Проблема тут: ' . mysqli_error($bd_link));
header("Location: /?module=todo&page=main");
exit();
