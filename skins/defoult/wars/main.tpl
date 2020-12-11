<div class="kickMessage">
    <?php
    if (isset($KickMessage)) {
        echo "<h2>$KickMessage</h2>";
    } ?>
</div>
<div class="game-main">
    <div class="game-user-area">
        <h2><?php 
            if(isset($userKey)) {
                echo htmlspecialchars($row['login']) . ":";
            } else {
                echo "Пользователь:";
            }
            ?></h2>
        <p>Осталось <?php echo $_SESSION['user']; ?> ХП</p>
    </div>
    <form class="game-kick-panel" action="" method="POST">
        <h4>Выберите куда ударить соперника</h4>
        <div class="game-input-block">
            <div><label class="game-input"><input type="radio" name="kick" value="1"
                        class="game-input-barrier">Голова</label></div>
            <div><label class="game-input"><input type="radio" name="kick" value="2"
                        class="game-input-barrier">Тело</label></div>
            <div><label class="game-input"><input type="radio" name="kick" value="3"
                        class="game-input-barrier">Ноги</label></div>
        </div>
        <input type="submit" id="game-kick-button" class="btn btn-danger" value="Нанести удар" name="game-kick-button">
    </form>
    <div class="game-pc-area">
        <h2>Компьютер:</h2>
        <p>Осталось <?php echo $_SESSION['comp']; ?> ХП</p>
    </div>
</div>