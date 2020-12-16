<?php
$update = "
UPDATE `goals` SET
`complete` = 1
WHERE `id` = " . $_GET['id'] . " AND `name` = '" . $row['login'] . "'
";
mysqli_query($bd_link, $update) or exit('Проблема тут: ' . mysqli_error($bd_link));
header("Location: /?module=todo&page=main");
exit();
