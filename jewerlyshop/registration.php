<?php
include("./include/db_connect.php");
mysql_set_charset("CP1251");

session_start();

//unset($_SESSION['auth']);
?>
<?php
header("Content-Type: text/html; charset=utf-8");

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="ru">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
    <script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>

    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/jquery.form.js"></script>
    <script src="js/script.js"></script>


    <link href="css/style.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">

</head>
<body>
<div id="block-body">
    <?php

    include ("./include/block-header.php");
    ?>
<script type="text/javascript"></script>
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">

                <div id="block-right3" class="col-lg-12 col-md-8 col-sm-12 col-xs-12">
                    <h2 class="h2-title">Регистрация</h2>
                    <form method="post" id="form_reg" action="reg/handler_registration.php">
                        <p id="reg_massage"></p>
                        <div id="block-form-registration">
                            <ul class="form-registration">
                                <div class="col-lg-6" >
                                    <li>
                                        <label>Логин</label>
                                        <span>*</span>
                                        <input class="form-control" type="text" name="reg_login" id="reg_login"/>
                                    </li>
                                    <li>
                                        <label>Пароль</label>
                                        <span>*</span>
                                        <span id="generation_password">Сгенерировать</span>
                                        <input class="form-control" type="text" name="reg_pass" id="reg_pass"/>

                                    </li>
                                    <li>
                                        <label>Фамилия</label>
                                        <span>*</span>
                                        <input class="form-control" type="text" name="reg_surname" id="reg_surname"/>
                                    </li>
                                    <li>
                                        <label>Имя</label>
                                        <span>*</span>
                                        <input class="form-control" type="text" name="reg_name" id="reg_name"/>
                                    </li>
                                </div>
                                <div class="col-lg-6" >
                                    <li>
                                        <label>Отчество</label>
                                        <span>*</span>
                                        <input class="form-control" type="text" name="reg_patronymic" id="reg_patronymic"/>
                                    </li>
                                    <li>
                                        <label>E-mail</label>
                                        <span>*</span>
                                        <input class="form-control" type="text" name="reg_email" id="reg_email"/>
                                    </li>
                                    <li>
                                        <label>Мобильный телефон</label>
                                        <span>*</span>
                                        <input class="form-control" type="text" name="reg_phone" id="reg_phone"/>
                                    </li>
                                    <li>
                                        <label>Адрес доставки</label>
                                        <span>*</span>
                                        <input class="form-control" type="text" name="reg_address" id="reg_address"/>
                                    </li>
                                </div>
                            </ul>
                        <input type="submit" name="reg_submit" id="form_submit" value="Регистрация"/>
                    </form>

                </div>
            </div>
        </div>
        <div id="block-left" class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
            <?php

            include ("./include/block-category.php");
            ?>
        </div>
    </div>




    
</div>

<?php
include ("./include/block-footer.php");
?>

<script src="js/bootstrap.js"></script>
</body>

</html>