<?php
setcookie("userKey", "", time() - 3600, "/");
unset($_COOKIE['userKey']);
unset($userKey);
header("Location: /?module=main&page=main");
