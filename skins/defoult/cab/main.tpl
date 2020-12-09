<?php if (isset($inputErrors)) {
    echo "<h2 class=\"inputErrors\">" . $inputErrors . "</h2>";
} elseif (isset($userKey) && $userKey == $_COOKIE['userKey']) {
    echo "<h2 class=\"inputIsset\">Здравствуйте " . $row['login'] . ". Вы уже авторизировались!</h2>";
} else { ?>
    <form method="POST" action="" class="form-into">
        <div class="form-group">
            <label for="exampleInputEmail1">Введите ваш логин:</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="inputLogin">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Введите пароль:</label>
            <input type="password" class="form-control" id="exampleInputPassword1" name="inputPassword">
        </div>
        <div class="reg-btn-align">
            <button type="submit" class="btn btn-primary reg-btn" name="inputSub">Войти</button>
        </div>
    </form>
<?php } ?>