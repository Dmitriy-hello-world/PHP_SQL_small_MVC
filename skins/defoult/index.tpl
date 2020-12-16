<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Domestos.com</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
    integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
  <link rel="stylesheet" href=".\css\style.css">
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
</head>

<body>
  <header>
    <div class="nav">
      <div class="first-nav"></div>
      <div class="main-nav">
        <a class="nav-link active" href="/?module=main&page=main">Главная</a>
        <a class="nav-link" href="/?module=wars&page=main">Битва алкоголиков</a>
        <a class="nav-link" href="/?module=program&page=main">Программа</a>
        <?php if ($adminPanel == 1) { ?>
        <a class="nav-link" href="/?module=adminPanel&page=main">Кабинет админа</a>
        <?php } ?>
      </div>
      <div class="cab-nav">
        <a class="nav-link" href="/?module=registration&page=main">Регистрация</a>
        <?php  if(isset($userKey)) { ?>
        <div class="dropdown">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
            <?php echo htmlspecialchars($row['login']); ?>
          </button>
          <div class="dropdown-menu" id="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="/?module=todo&page=main">Мой список задач</a>
            <a class="dropdown-item" href="/?module=cab&page=exit">Выйти</a>
          </div>
        </div>
        <?php } else {
          echo "<a class=\"nav-link\" href=\"/?module=cab&page=main\">Войти</a>";
        } ?>
      </div>
      </nav>
  </header>
  <hr id="hr-botton-header">
  <main>
    <?php include "./skins/defoult/" . $_GET['module'] . "/" . $_GET['page'] . ".tpl"; ?>
  </main>
  <footer>
    <p> Сайт создан мной! Копирайт:
      <?php echo $copyrite; ?>
    </p>
  </footer>
</body>

</html>