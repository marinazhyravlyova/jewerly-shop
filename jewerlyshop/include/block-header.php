
    <ul class="header-top-menu">

        <?php
        //unset($_SESSION['auth']);
        if ($_SESSION['auth'] != 'yes_auth')
        {
            echo '<li><p class="input_button"><a class="top-auth" onclick="openbox()">Вход</a></p></li>
                  <li><p class="registration_button"><a href="registration.php">Регистрация</a></p></li>';



        } else{

            echo '
                    <li><p class="input_button"><a href="profile.php">Профиль</a></p></li>
                    <li><p class="registration_button"><button onclick="logout()"><a id="logout">Выход</a></p></button> </li>
           
            
            ';
            echo '<li><p id="name_user" >Здравствуйте, '. $_SESSION['auth_name'].'</p></li>';
        }
        ?>

    </ul>

        <p id="registration-auth-title">


            <div id="block-top-auth">
                <form method="post">
                    <ul id="input-email-pass">
                        <h4>Вход</h4>
                        <p id="massage-auth">Неверный Логин и(или) Пароль</p>
                        <li><input type="text" id="auth-login" class="form-control" placeholder="Введите логин"/></li>
                        <li><input type="text" id="auth-pass" class="form-control" placeholder="Введите пароль"/></li>

                        <p id="button-auth" onclick="signingIn()"><a>Вход</a></p>
                    </ul>
                </form>
            </div>
            </p>

<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div id="block-header">
                <div class="col-lg-10 col-md-8 col-sm-12 col-xs-12">
                    <img src="/image/logo.png"/>
                </div>

                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-10  col-xs-pull-2  cart">
                    <li id="block-basket"><a href="/cart.php?action=onclick">Корзина</a></li>
                </div>
            </div>
            <div class="menu">
                <div id="bloch-menu" class="col-lg-8 col-md-6 col-sm-12 col-xs-12">
                    <ul>
                        <li><a href="index.php">Главная</a></li>
                        <li><a href="">Новинки</a></li>
                        <li><a href="">Популярное</a></li>
                        <li><a href="">Акции</a></li>
                    </ul>
                </div>
                <div id="bloch-search" class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                    <form method="get" action="search.php" class="form-search">
                        <input id="input-search" type="text" class="input-medium search-query form-control" placeholder="Поиск товаров">
                        <button id=button-search type="submit" class="btn">Найти</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>