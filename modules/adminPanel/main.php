<?php
if (!isset($_COOKIE['AdminKey'])) {
    exit();
} elseif ($_COOKIE['AdminKey'] != ADMINKEY && $_SERVER['REMOTE_ADDR'] != ADMINID) {
    exit();
}
