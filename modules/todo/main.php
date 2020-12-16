<?php
if (isset($_POST['goal'], $_POST['addGoal'])) {
    if (!empty($_POST['goal'])) {
        $addgoal = "
        INSERT INTO `goals` SET    
        `name` = '" . mysqli_real_escape_string($bd_link, $row['login']) . "',
        `goal` = '" . mysqli_real_escape_string($bd_link, $_POST['goal']) . "',
        `date` = '" . date('Y') . "-" . $_POST['month'] . "-" . $_POST['date'] . "'
        ";
        mysqli_query($bd_link, $addgoal) or exit('Проблема тут: ' . mysqli_error($bd_link));
        header("Location: /?module=todo&page=main");
        exit();
    }
}
$allGoals = "
SELECT * FROM `goals`
WHERE `name` = '" . $row['login'] . "'
ORDER BY `date` ASC
";
$result = mysqli_query($bd_link, $allGoals) or exit('Проблема тут ' . mysqli_error($bd_link));
