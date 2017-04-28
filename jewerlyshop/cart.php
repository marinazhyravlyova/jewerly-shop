<?php
header("Content-Type: text/html; charset=utf-8");

?>
<?php
include("./include/db_connect.php");
session_start();

    $id = $_GET["id"];
    $action = $_GET["action"];
switch ($action){
    case 'clear':
        $clear = mysql_query("DELETE FROM cart",$link);
        break;
    case 'delete':
        $clear = mysql_query("DELETE FROM cart WHERE cart_id = '$id'",$link);
        break;

}
if (isset($_POST["submitdata"]))
{
    $_SESSION["order_delivery"] = $_POST["order_delivery"];
    $_SESSION["order_fio"] = $_POST["order_fio"];
    $_SESSION["order_email"] = $_POST["order_email"];
    $_SESSION["order_phone"] = $_POST["order_phone"];
    $_SESSION["order_address"] = $_POST["order_address"];
    $_SESSION["order_note"] = $_POST["order_note"];

    header ("Location: cart.php?action=completion");
}
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
    <script src="/js/script.js"></script>
    <script src="/js/product-loader.js"></script>
    <script src="/js/product-loader.js"></script>
    <script src="/js/product-information.js"></script>
    <script src="/js/carousel.js"></script>
    <script src="/js/shop-script.js"></script>
    <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
    <link href="css/style.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">

    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css' />

</head>
<body>
<div id="block-body">
    <div id="target"></div>
    <?php

    include ("./include/block-header.php");
    ?>

    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div id="block-right" class="col-lg-9 col-md-8 col-sm-12 col-xs-12">
                    
                    <?php
                        $action = $_GET["action"];
                    switch ($action) {
                        case 'onclick':
                            echo '
                                <div id="block-step">
                                    <div id="block-step">
                                        <ul>
                                            <li class="active shag_one"><p class="number-of-shag">01</p><a href="cart.php?action=onclick">Корзина товаров</a></li>
                                            <li class="shag_two"><p class="number-of-shag ">02</p><a href="cart.php?action=confirm">Контактная информация</a></li>
                                            <li class="shag_three"><p class="number-of-shag ">03</p><a href="cart.php?action=completion">Завершение</a></li>
                                        </ul>
                                    </div>
                                  
                                </div>
                            ';
                            echo '
                                <div class="col-lg-12" id="header-list-cart">
                                    <div class="col-lg-2 " id="head1">Изображение</div>
                                    <div class="col-lg-4 " id="head2">Наименование товара</div>
                                    <div class="col-lg-1 col-lg-push-2" id="head3">Количество</div>
                                    <div class="col-lg-1 col-lg-push-2" id="head4">Цена</div>
                                </div>           
                                ';
                            $result = mysql_query("SELECT * FROM cart, table_prodacts WHERE table_prodacts.prodact_id = cart.cart_id_product", $link);
                            if(mysql_num_rows($result) > 0) {
                                $row = mysql_fetch_array($result);

                                do {
                                    $int = $row["cart_price"] * $row["cart_count"];
                                    $all_price = $all_price + $int;

                                    if (strlen($row["image"]) > 0 && file_exists($row["image"])) {
                                        $img_path = $row["image"];
                                        $max_width = 100;
                                        $max_height = 100;
                                        list($width, $height) = getimagesize($img_path);
                                        $ratioh = $max_height / $height;
                                        $ratiow = $max_width / $width;
                                        $ratio = min($ratioh, $ratiow);

                                        $width = intval($ratio * $width);
                                        $height = intval($ratio * $height);


                                    } else {

                                    }
                                    echo '
                                <div class="block-list-cart col-lg-12">                           
                                    <div class="col-lg-2 img-cart">
                                        <p align="center"><img src="' . $row["image"] . '" width="100px" height="100px"/></p>
                                    </div>
                                    <div class="title-cart col-lg-4">
                                        <p><a href="">' . $row["title"] . '</a></p>
                                        <p class="cart-mini_discription">' . $row["mini_discription"] . '</p>
                                    </div>
                                    <div class="count-cart col-lg-2 col-lg-push-2">
                                        <ul class="input-count-style">
                                            <li><p align="center" class="count-minus">-</p> </li>
                                        </ul>
                                        <ul class="input-count-style">
                                            <li><p align="center"><input class="count-input" maxlength="3" type="text" value="' . $row["cart_count"] . '" /></p> </li>
                                        </ul>
                                        <ul class="input-count-style">
                                            <li><p align="center" class="count-plus">+</p></li>
                                        </ul>
                                    </div>
                                    <div class="price-product col-lg-1 col-lg-push-2"><h5><span class="span-count">' . $row["cart_count"] . '</span>x<span>' . $row["cart_price"] . '</span>
                                    </h5><p>' . $row["cart_price"] . '</p></div>
                                    <div class="delete-cart col-lg-1 col-lg-push-2"><a href="cart.php?id=' . $row["cart_id"] . '&action=delete"><i class="glyphicon glyphicon-trash"></i>
                                    </a></div>
                                    </div>
                                
                            ';

                                } while ($row = mysql_fetch_array($result));
                                echo '
                                    <h2 class="itog-price">Итого: <strong>' . $all_price . '</strong>руб.</h2>
                                    <div class="col-lg-2 col-lg-push-10"><button class="button-next"><a href="cart.php?action=confirm">Далее</a></button></div>
                                ';
                            }
                            break;
                        case 'confirm':
                            echo '
                                <div id="block-step">
                                        <ul>
                                            <li class="  shag_one"><p class="number-of-shag">01</p><a href="cart.php?action=onclick">Корзина товаров</a></li>
                                            <li class="shag_two active"><p class="number-of-shag ">02</p><a href="cart.php?action=confirm">Контактная информация</a></li>
                                            <li class="shag_three"><p class="number-of-shag ">03</p><a href="cart.php?action=completion">Завершение</a></li>
                                        </ul>
                                    </div>
                            ';

                            $chck = "";
                            if ($_SESSION['order_delivery']  == "По почте") $chck1 = "checked";
                            if ($_SESSION['order_delivery']  == "По почте") $chck2 = "checked";
                            if ($_SESSION['order_delivery']  == "По почте") $chck3 = "checked";

                            echo '
                                
                                <form  method="post">
                                    <h3 class="title_h3">Информация для доставки:</h3>
                                    <ul id="info-order">
                                ';
                            if ($_SESSION['auth'] != 'yes_auth')
                            {
                                echo '
                                    <div class="col-lg-6">
                                    <li><label for="order_fio"><span>*</span>ФИО</label>
                                        <input class="form-control" type="text" name="order_fio" id="order_fio" value="'.$_SESSION["order_fio"].'" />
                                        
                                    </li>
                                    <li><label for="order_email"><span>*</span>E-mail</label>
                                        <input class="form-control" type="text" name="order_email" id="order_email" value="'.$_SESSION["order_email"].'" />
                                       
                                    </li>
                                    <li><label for="order_phone"><span>*</span>Телефон</label>
                                        <input class="form-control" type="text" name="order_phone" id="order_phone" value="'.$_SESSION["order_phone"].'" />
                                        
                                    </li>
                                    <li><label for="order_label_style" for="order_address"><span>*</span>Адрес</label>
                                        <input class="form-control" type="text" name="order_address" id="order_address" value="'.$_SESSION["order_address"].'" />
                                        
                                    </li>
                                    <li>
                                        <label class="order_label_style" for="order_note">Примечание</label>
                                        <textarea class="form-control" name="order_note">'.$_SESSION["order_note"].'</textarea>
                                        
                                    </li>
                               
                                    </div>
                                    <div id="primaty" class="col-lg-6">
                                        <li><span class="primary">Ивонов Иван Иванович</span></li>
                                        <li> <span class="primary">ivanov@gmail.com</span></li>
                                        <li><span class="primary">+375 33 650 07 98</span></li>
                                        <li><span class="primary">г.Минск, улица Якуба Коласа, д.28, кв.614а</span></li>
                                        <li><span class="time">Уточните информацию о заказе. Например, удобное время для звонка нашего менеджера</span></li>
                                    </div>
                                ';
                                echo '
                                     </ul>
                               
                               
                                <h3 class="title_h3">Способы доставки:</h3>
                                    <ul id="info-radio">
                                        <li>
                                            <input type="radio" name="order_delivery" class="order_delivery" id="order_delivery1" value="По почте" '.$chck1.' />
                                            <label class="label_delivery" for="order_delivery1">По почте</label>
                                        </li>
                                        <li>
                                            <input type="radio" name="order_delivery" class="order_delivery" id="order_delivery2" value="Курьером" '.$chck2.' />
                                            <label class="label_delivery" for="order_delivery2">Курьером</label>
                                        </li>
                                        <li>
                                            <input type="radio" name="order_delivery" class="order_delivery" id="order_delivery3" value="Самовывоз" '.$chck3.' />
                                            <label class="label_delivery" for="order_delivery3">Самовывоз</label>
                                        </li>
                                    </ul>
                                 <div class="col-lg-2 col-lg-push-1">
                                        <button class="button-next"><a href="cart.php?action=onclick">Назад</a></button>
                                 </div>
                                 <div class="col-lg-2 col-lg-push-7"><p>
                                    <input type="submit" name="submitdata" id="confirm-button-next" value="Далее"/></p>
                                 </div>
                            </form>
                                ';
                            }
                            else {
                                echo '
                                  <div class="col-lg-6">
                                    
                                    <li>
                                        <label class="order_label_style" for="order_note">Примечание</label>
                                        <textarea class="form-control" name="order_note">'.$_SESSION["order_note"].'</textarea>
                                        
                                    </li>
                               
                                    </div>
                                    
                                ';
                                echo '
                                     </ul>
                               
                               
                                <h3 class="title_h3">Способы доставки:</h3>
                                    <ul id="info-radio">
                                        <li>
                                            <input type="radio" name="order_delivery" class="order_delivery" id="order_delivery1" value="По почте" '.$chck1.' />
                                            <label class="label_delivery" for="order_delivery1">По почте</label>
                                        </li>
                                        <li>
                                            <input type="radio" name="order_delivery" class="order_delivery" id="order_delivery2" value="Курьером" '.$chck2.' />
                                            <label class="label_delivery" for="order_delivery2">Курьером</label>
                                        </li>
                                        <li>
                                            <input type="radio" name="order_delivery" class="order_delivery" id="order_delivery3" value="Самовывоз" '.$chck3.' />
                                            <label class="label_delivery" for="order_delivery3">Самовывоз</label>
                                        </li>
                                    </ul>
                                 <div class="col-lg-2 col-lg-push-1">
                                        <button class="button-next"><a href="cart.php?action=onclick">Назад</a></button>
                                 </div>
                                 <div class="col-lg-2 col-lg-push-7"><p>
                                    <input type="submit" name="submitdata" id="confirm-button-next" value="Далее"/></p>
                                 </div>
                            </form>
                                ';

                            }

                            break;
                        case 'completion':
                            echo '
                              <div id="block-step">
                                        <ul>
                                            <li class=" shag_one"><p class="number-of-shag">01</p><a href="cart.php?action=onclick">Корзина товаров</a></li>
                                            <li class="shag_two"><p class="number-of-shag ">02</p><a href="cart.php?action=confirm">Контактная информация</a></li>
                                            <li class="shag_three active"><p class="number-of-shag ">03</p><a href="cart.php?action=completion">Завершение</a></li>
                                        </ul>
                                    </div>
                            ';
                            if ($_SESSION['auth'] == 'yes_auth')
                            {
                                echo '
                                <div id="notepad">
                                <ul id="list-info">
                                    <li><strong>Способ доставки:</strong>'.$_SESSION['order_delivery'].'</li>
                                    <li><strong>E-mail:</strong>'.$_SESSION['auth_email'].'</li>
                                    <li><strong>ФИО:</strong>'.$_SESSION['auth_surname'].'</li>
                                    <li><strong>Адрес доставки:</strong>'.$_SESSION['auth_address'].'</li>
                                    <li><strong>Телефон:</strong>'.$_SESSION['auth_phone'].'</li>
                                    <li><strong>Примечание:</strong>'.$_SESSION['order_note'].'</li>
                                </ul>
                                </div>
                                ';
                            } else {
                                echo '
                                <div id="notepad">
                                <ul id="list-info" >
                                    <li><strong>Способ доставки:</strong>'.$_SESSION['order_delivery'].'</li>
                                    <li><strong>E-mail:</strong>'.$_SESSION['order_email'].'</li>
                                    <li><strong>ФИО:</strong>'.$_SESSION['order_fio'].'</li>
                                    <li><strong>Адрес доставки:</strong>'.$_SESSION['order_address'].'</li>
                                    <li><strong>Телефон:</strong>'.$_SESSION['order_phone'].'</li>
                                    <li><strong>Примечание:</strong>'.$_SESSION['order_note'].'</li>
                                </ul></div>
                                ';
                            }
                            echo ' 
                                 <div class="button_in_cart col-lg-2 col-lg-push-1">
                                        <button class="button-next"><a href="cart.php?action=confirm">Назад</a></button>
                                 </div>
                                 <div class="button_in_cart col-lg-2 col-lg-push-6"><p>
                                    <input type="submit"  id="button-itog" onclick="sendingInformation()" value="Далее"/></p>
                                 </div>
                                 <div class="text_in_cart">
                                    <p>Ваш заказ успешно оформлен. В ближайшее время наш консультант свяжется с вами. Спасибо за покупку!</p>
                                 </div>
                                 ';

                            break;
                        default:
                            echo '
                                <div id="block-step">
                                    <div id="block-step">
                                        <ul>
                                            <li class="active shag_one"><p class="number-of-shag">01</p><a>Корзина товаров</a></li>
                                            <li class="shag_two"><p class="number-of-shag ">02</p><a>Контактная информация</a></li>
                                            <li class="shag_three"><p class="number-of-shag ">03</p><a>Завершение</a></li>
                                        </ul>
                                    </div>
                                  
                                </div>
                            ';
                            echo '
                                <div class="col-lg-12" id="header-list-cart">
                                    <div class="col-lg-2 " id="head1">Изображение</div>
                                    <div class="col-lg-4 " id="head2">Наименование товара</div>
                                    <div class="col-lg-1 col-lg-push-2" id="head3">Количество</div>
                                    <div class="col-lg-1 col-lg-push-2" id="head4">Цена</div>
                                </div>           
                                ';
                            $result = mysql_query("SELECT * FROM cart, table_prodacts WHERE table_prodacts.prodact_id = cart.cart_id_product", $link);
                            if(mysql_num_rows($result) > 0) {
                                $row = mysql_fetch_array($result);

                                do {
                                    $int = $row["cart_price"] * $row["cart_count"];
                                    $all_price = $all_price + $int;

                                    if (strlen($row["image"]) > 0 && file_exists($row["image"])) {
                                        $img_path = $row["image"];
                                        $max_width = 100;
                                        $max_height = 100;
                                        list($width, $height) = getimagesize($img_path);
                                        $ratioh = $max_height / $height;
                                        $ratiow = $max_width / $width;
                                        $ratio = min($ratioh, $ratiow);

                                        $width = intval($ratio * $width);
                                        $height = intval($ratio * $height);


                                    } else {

                                    }
                                    echo '
                                <div class="block-list-cart col-lg-12">                           
                                    <div class="col-lg-2 img-cart">
                                        <p align="center"><img src="' . $row["image"] . '" width="100px" height="100px"/></p>
                                    </div>
                                    <div class="title-cart col-lg-4">
                                        <p><a href="">' . $row["title"] . '</a></p>
                                        <p class="cart-mini_discription">' . $row["mini_discription"] . '</p>
                                    </div>
                                    <div class="count-cart col-lg-2 col-lg-push-2">
                                        <ul class="input-count-style">
                                            <li><p align="center" class="count-minus">-</p> </li>
                                        </ul>
                                        <ul class="input-count-style">
                                            <li><p align="center"><input class="count-input" maxlength="3" type="text" value="' . $row["cart_count"] . '" /></p> </li>
                                        </ul>
                                        <ul class="input-count-style">
                                            <li><p align="center" class="count-plus">+</p></li>
                                        </ul>
                                    </div>
                                    <div class="price-product col-lg-1 col-lg-push-2"><h5><span class="span-count">' . $row["cart_count"] . '</span>x<span>' . $row["cart_price"] . '</span>
                                    </h5><p>' . $row["cart_price"] . '</p></div>
                                    <div class="delete-cart col-lg-1 col-lg-push-2"><a href="cart.php?id=' . $row["cart_id"] . '&action=delete"><i class="glyphicon glyphicon-trash"></i>
                                    </a></div>
                                    </div>
                                
                            ';

                                } while ($row = mysql_fetch_array($result));
                                echo '
                                    <h2 class="itog-price">Итого: <strong>' . $all_price . '</strong>руб.</h2>
                                    <div class="col-lg-2 col-lg-push-10"><button class="button-next"><a href="cart.php?action=confirm">Далее</a></button></div>
                                ';
                            }
                            break;
                    }
                    ?>
                </div>
                <div id="block-left" class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
                    <?php

                    include ("./include/block-category.php");
                    ?>
                </div>

        </div>
    </div><img src="" alt=""/>




</div>

    <?php
    include ("./include/block-footer.php");
    ?>


<script src="js/bootstrap.js"></script>
</body>

</html>