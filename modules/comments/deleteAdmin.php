<?php
$deleteQuery = "
DELETE FROM `comments`
WHERE `id` = " . $_GET['id'] . " 
";
mysqli_query($bd_link, $deleteQuery) or exit('Проблема тут: ' . mysqli_error($bd_link));
header("Location: /?module=main&page=main");
