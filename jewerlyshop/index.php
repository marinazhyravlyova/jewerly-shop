<?php
include("./include/db_connect.php");
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
                <div id="block-right" class="col-lg-10 col-md-8 col-sm-12 col-xs-12">
                <div class="container">
                    <!-- freshdesignweb top bar -->
                    <div class="freshdesignweb-top">
                    <div class="slider_container">
                        <div class="flexslider">
                            <ul class="slides">
                                <li>
                                    <img src="/image/slider/11.jpg" alt="" title=""/>
                                </li>
                                <li>
                                   <img src="image/slider/2.png" alt="" title=""/>
                                </li>
                                <li>
                                    <img src="image/slider/3.jpg" alt="" title=""/>
                                </li>
                                <li>
                                  <img src="image/slider/4.jpg" alt="" title=""/>
                                </li>
                                <li>
                                    <img src="image/slider/7.jpg" alt="" title=""/>
                                </li>
                                <li>
                                    <img src="image/slider/8.jpg" alt="" title=""/>
                                </li>
                                <li>
                                   <img src="image/slider/9.jpg" alt="" title=""/>
                                </li>
                                <li>
                                    <img src="image/slider/22.jpg" alt="" title=""/>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>

                    <ul id="product-template">
                        <li class="product_id">
                            <p> <img  class="image_products" id="imageToFlyId" name="img"  onclick="getInformationAboutOneProduct(id)"/></p>
                            <p class="name_product"></p>
                            <p class="artical_product">Артикул </p>
                            <p class="price_product"></p>
                            <button class="add_to_cart" onclick="addToCart(id/555)"><a class="add_cart_style_grid"></a>В корзину</button>
                            <button class="view"><a href="../index.php"><span class="view_product">Посмотреть</span></a></button>
                            <p class="item-added">Товар добавлен в корзину!</p>
                        </li>
                    </ul>
                    <ul id="block-product-grid" class="oll_products"><ul></ul></ul>
                    <div class="number_of_page">
                        <ul>
                            <li><button onclick="productLoader.loadPage(1)" class="number_page">1</button></li>
                            <li><button onclick="productLoader.loadPage(2)" class="number_page">2</button></li>
                            <li><button onclick="productLoader.loadPage(1)" class="number_page">3</button></li>
                            <li><button onclick="productLoader.loadPage(2)" class="number_page">4</button></li>
                            <li><button onclick="productLoader.loadPage(1)" class="number_page">5</button></li>
                            <li><button onclick="productLoader.loadPage(2)" class="number_page">6</button></li>
                            <li><button onclick="productLoader.loadPage(1)" class="number_page">7</button></li>
                        </ul>
                    </div>
                    <ul id="one_product">
                        <li>
                            <div class="col-lg-7">
                                <img  class="image_one_products" name="img"/>
                            </div>
                           <div class="col-lg-5">
                               <p class="name_one_product"></p>
                               <p class="about_product">Характеристики украшения:</p>
                               <p class="mini_discr"></p>
                               <p class="artical_product artical_one">Артикул </p>
                               <p class="price_product one_price"></p>
                               <button class="add_to_cart one_add_to_cart"><a class="add_cart_style_grid"></a>В корзину</button>
                           </div>

                        </li>
                    </ul>
                    <div class="carousel_same_products">
                        <p id="same_products"></p>
                        <div id="template-carousel">
                            <div class="block_with_carousel">
                                <img class="image-in-carousel" onclick="getInformationAboutOneProduct(id/1000)"/>
                            </div>
                        </div>

                        <div class="carousel shadow">
                            <div class="carousel-button-left none_class1"><a href="#"></a></div>
                            <div class="carousel-button-right none_class2"><a href="#"></a></div>
                            <div class="carousel-wrapper" id="carousel">
                                <div class="carousel-items">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="block-left" class="col-lg-2 col-md-4 col-sm-12 col-xs-12">
                    <?php

                    include ("./include/block-category.php");
                    ?>
                </div>
                <div class="col-lg-12 block-information_about_shop"><p>Бижутерия в Минске! Интернет магазин бижутерии bijou.by предлагает Вам качественные реплики мировых брендов Bvlgari, Cartier, Tiffany, Pilgrim, Pandora и многие другие.</p>
                    <p>Красивая, профессионально исполненная бижутерия является одним из самых главных аксессуаров в гардеробе современной женщины. Бижутерия – признак хорошего вкуса. </p>
                    <p>Сегодня каждый модный бренд выпускает широкий ассортимент бижутерии, которую изготавливают под разные стили одежды. Наш магазин бижутерии имеет большой каталог недорогих, но очень красивых и оригинальных украшений.</p>
                    <p>Кстати, бижутерия уже давно не является украшением исключительно для женщин. Мужчины тоже носят бижутерию и могут купить украшения в нашем магазине. Современная качественная бижутерия изготавливается из металлов, которые со временем не меняют цвет за счет позолоты и серебрения.</p>
                    <p>Вы можете купить украшения, в которых используются кристаллы Swarovski, полудрагоценные камни, дерево, ракушки, эмаль, кружево, глина, пластик, да и сам дизайн гораздо оригинальнее, чем у золотых и серебряных изделий.</p></div>
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