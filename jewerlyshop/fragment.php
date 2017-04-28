<?php
include("./include/db_connect.php");

?>
<ul id="block-product-grid" class="oll_products">
    <?php

    $result = mysql_query("SELECT * FROM table_prodacts", $link);
    if(mysql_num_rows($result) > 0)
    {
        $row = mysql_fetch_array($result);
        do{
            echo '
                                    <li>
                                       
                                            <a href="index.php"><img src="/image/products/'.$row["image"].'" alt=""/></a> 
                                            <a href="index.php"><p class="name_product">'.$row["title"].'</p></a>
                                            <p class="artical_product">Артикул '.$row["artical"].'</p>
                                            <p class="price_product">'.$row["price"].'руб.</p>
                                            <button class="add_to_cart"><a class="add_cart_style_grid"></a>В корзину</button>
                                            <button class="view"><a href="index.php"><span class="view_product">Посмотреть</span></a></button>
                                       
                                   </li>
                                    ';
        }
        while($row = mysql_fetch_array($result));
    }
    ?>
</ul>