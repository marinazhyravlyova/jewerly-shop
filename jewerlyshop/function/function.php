<?php
include("../include/db_connect.php");

?>
<?php
header("Content-Type: text/html; charset=utf-8");

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="ru">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <script src="js/jquery.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/3.51/jquery.form.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/script.js"></script>
    <link href="css/style.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">

</head>
<body>
<li class="all_products">


    <p class="artical_product">Артикул </p>
    <p class="price_product"></p>
    <button class="add_to_cart"><a class="add_cart_style_grid"></a>В корзину</button>
    <button class="view"><a href="../index.php"><span class="view_product">Посмотреть</span></a></button>
</li></body>