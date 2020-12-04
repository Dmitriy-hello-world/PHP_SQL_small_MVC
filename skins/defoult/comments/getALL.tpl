<?php
while ($nextCom = mysqli_fetch_assoc($res)) { ?>
    <div class="media">
        <div class="media-body">
            <h5 class="mt-0"><?php echo htmlspecialchars($nextCom['name']); ?><span class="com-data"><?php echo $nextCom['date']; ?></span></h5>
            <?php echo nl2br(htmlspecialchars($nextCom['text'])); ?>
        </div>
    </div>
<?php } ?>