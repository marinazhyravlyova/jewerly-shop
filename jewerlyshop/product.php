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
    <script src="/js/product-information.js"></script>
    <link href="css/style.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">

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
                    <button class="name_product" id="5555"></button>
                </div>
                <div id="block-left" class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
                    <?php

                    include ("./include/block-category.php");
                    ?>
                </div>
            </div>
        </div>
    </div><img src="" alt=""/>



    <?php
    include ("./include/block-footer.php");
    ?>
</div>




<script src="js/bootstrap.js"></script>
</body>

</html>