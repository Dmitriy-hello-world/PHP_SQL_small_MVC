<?php
$select = "
SELECT * FROM `comments`
ORDER BY `date` DESC";
$res = mysqli_query($bd_link, $select) or exit('Ошибка тут: ' . mysqli_error($bd_link));
