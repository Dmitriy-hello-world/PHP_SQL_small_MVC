<h2 class="todo-header">Список моих целей!</h2>
<table class="table">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Задача</th>
            <th scope="col" class="text-align">Сроки</th>
            <th scope="col"></th>
            <th scope="col" class="text-align">Отметка про выполнение</th>
            <th scope="col" class="text-align">Удалить задачу</th>
        </tr>
    </thead>
    <tbody>
        <?php
        if (mysqli_num_rows($result) != 0) {
            $i = 1;
            while ($allGoal = mysqli_fetch_assoc($result)) { ?>
                <tr>
                    <th scope="row">
                        <?php echo $i++; ?>
                    </th>
                    <td class="corect-width">
                        <div class="text-weight corect-width">
                            <?php echo nl2br(htmlspecialchars($allGoal['goal'])); ?>
                        </div>
                    </td>
                    <td class="text-align">
                        <?php echo $allGoal['date']; ?>
                    </td>
                    <td class="text-align">
                        <a href="/?module=todo&page=check&id=<?php echo $allGoal['id']; ?> " id="blue" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Выполнено</a>
                    </td>
                    <td>
                        <?php
                        if ($allGoal['complete'] == 0) {
                            echo "<div class=\"not-complete\">Не выполнено</div>";
                        } elseif ($allGoal['complete'] == 1) {
                            echo "<div class=\"complete\">Цель достигнута</div>";
                        }
                        ?>
                    </td>
                    <td class="text-align">
                        <a href="/?module=todo&page=delete&id=<?php echo $allGoal['id']; ?> " id="red" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Удалить</a>
                    </td>
                </tr>
        <?php }
        } ?>
        <tr>
            <form action="" method="POST">
                <th scope="row" id="vertical-align">+</th>
                <td>
                    <div class="form-group" id="area-width">
                        <textarea class="form-control" id="exampleFormControlTextarea1" style="height: 40px;" rows="1" name="goal" placeholder="Введи вашу цель.." cols="20" wrap="hard"></textarea>
                    </div>
                </td>
                <td class="text-align" id="vertical-align"><label><b>Выполнить до:</b>
                <td class="text-align select-color" id="vertical-align">
                    Дата: <select name="date">
                        <?php for ($i = 1; $i <= 31; $i++) {
                            echo "<option value=\"" . $i . "\">" . $i . "</option>";
                        } ?>
                    </select></label>
                    <label>Месяц: <select name="month">
                            <option value="1">Января</option>
                            <option value="2">Февраля</option>
                            <option value="3">Марта</option>
                            <option value="4">Апреля</option>
                            <option value="5">Мая</option>
                            <option value="6">Июня</option>
                            <option value="7">Июля</option>
                            <option value="8">Августа</option>
                            <option value="9">Сентября</option>
                            <option value="10">Октября</option>
                            <option value="11">Ноября</option>
                            <option value="12">Декабря</option>
                        </select></label>
                </td>
                <td></td>
                <td class="text-align" id="vertical-align">
                    <input type="submit" id="add-goal-btn" class="btn btn-outline-primary" value="Добавить цель" name="addGoal">
                </td>
            </form>
        </tr>
    </tbody>
</table>