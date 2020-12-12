<?php
$selectDeleteCom = "
SELECT * FROM `comments`
WHERE `id` = " . (int)$_GET['id'] . " 
";
$result = mysqli_query($bd_link, $selectDeleteCom) or exit('Проблема тут: ' . mysqli_error($bd_link));
$comments = mysqli_fetch_assoc($result);
$insertDeleteCom = "
INSERT INTO `basket` SET
`name` = '" . mysqli_real_escape_string($bd_link, $comments['name']) . "',
`text` = '" . mysqli_real_escape_string($bd_link, $comments['text']) . "',
`date` = '" . $comments['date'] . "',
`idbefore` = " . (int)$comments['id'] . " 
";
mysqli_query($bd_link, $insertDeleteCom) or exit('Проблема тут: ' . mysqli_error($bd_link));
$deleteQuery = "
DELETE FROM `comments`
WHERE `id` = " . $_GET['id'] . " 
";
mysqli_query($bd_link, $deleteQuery) or exit('Проблема тут: ' . mysqli_error($bd_link));
header("Location: /?module=main&page=main");
