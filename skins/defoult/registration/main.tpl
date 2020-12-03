<?php if(isset($_SESSION['regOK'])) {
    if($_SESSION['regOK'] == "regOK" ) { 
        session_destroy();
        unset($_SESSION['regOK']);?>
<h1 class="regOK">Вы успешно зарегистрировались</h1>
<?php }
    } else { ?>
<div class="reg-header">
    <h2>Войдите в этот прекрасный сайт</h2>
    <h5><?php if (isset($errors)) {
                    foreach ($errors as $val) {
                        echo $val . "<br>";
                    }
                } ?></h5>
</div>
<form method="POST" action="">
    <div class="form-group">
        <label for="exampleInputEmail1" class="form-width">Email:</label>
        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email"
            value="<?php if(isset($_POST['email'])) echo htmlspecialchars($_POST['email']);?>">
        <small id="emailHelp" class="form-text text-muted">Мы никогда не сообщаем ваш Email другим лицам.</small>
    </div>
    <div class="form-group">
        <label for="exampleInputlogin">Логин:</label>
        <input type="text" class="form-control" id="exampleInputlogin" name="login"
            value="<?php if(isset($_POST['login'])) echo htmlspecialchars($_POST['login']);?>">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Пароль:</label>
        <input type="password" class="form-control" id="exampleInputPassword1" name="password">
    </div>
    <div class="reg-btn-align">
        <button type="submit" class="btn btn-primary reg-btn">Войти</button>
    </div>
</form>
<?php
} ?>