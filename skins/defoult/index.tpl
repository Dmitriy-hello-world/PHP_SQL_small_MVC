<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Document</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
  <link rel="stylesheet" href=".\css\style.css">
</head>

<body>
  <header>
    <ul class="nav justify-content-center">
      <li class="nav-item">
        <a class="nav-link active" href="/?module=main&page=main">Главная</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Битва алкоголиков</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Программа</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/?module=registration&page=main">Регистрация</a>
      </li>
    </ul>
  </header>
  <hr id="hr-botton-header">
  <main>
    <?php include "./skins/defoult/" . $_GET['module'] . "/" . $_GET['page'] . ".tpl"; ?>
  </main>
  <footer>
    <p> Сайт создан мной! Копирайт: <?php echo $copyrite; ?></p>
  </footer>
</body>

</html>