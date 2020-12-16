<?php
while ($nextCom = mysqli_fetch_assoc($res)) { ?>
<div class="media">
    <div class="media-body">
        <h5 class="mt-0">
            <?php echo htmlspecialchars($nextCom['name']); ?><span class="com-data">
                <?php echo $nextCom['date']; ?>
            </span><span>
                <?php
            if(isset($userKey)) {    
                if ($nextCom['name'] == $row['login']) {
                    echo "<a class=\"com-delete\" href=\"/?module=comments&page=delete&id=".$nextCom['id']."\">Удалить</a>";
                } 
            } elseif(isset($_COOKIE['AdminKey']) && $_COOKIE['AdminKey'] == ADMINKEY) {
                echo "<a class=\"com-delete\" href=\"/?module=comments&page=deleteAdmin&id=".$nextCom['id']."\">Удалить</a>";
            }    ?>
            </span>
        </h5>
        <?php echo "<div class=\"correct\">".nl2br(htmlspecialchars($nextCom['text']))."</div>"; ?>
    </div>
</div>
<?php } ?>