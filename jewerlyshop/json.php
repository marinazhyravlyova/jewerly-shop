<?php
header("Content-Type: application/json; charset=utf-8");
$time0=  microtime(true);
include ("include/db_connect.php");

?>

<?php
$time1 =  microtime(true);

$page = $_GET["page"];
$category = $_GET["category"];

$result = mysql_query("SELECT * FROM table_prodacts WHERE visible='$category' LIMIT 6 OFFSET ".(string)(($page-1)*6), $link);
$time2 =  microtime(true);
if(mysql_num_rows($result) > 0)
{

    $row = mysql_fetch_array($result);
    $array = array();

    do{

        $new_product = (object) array(
            "product_id" => $row["prodact_id"],
            "title" => $row["title"] ,
            "price" => $row["price"] ,
            "artical" => $row["artical"],
            "mini_discription" => $row["mini_discription"],
            "image" => $row["image"],
            "visible" => $row["visible"]

        );

        array_push($array, $new_product);

    }

    while($row = mysql_fetch_array($result));

    echo json_encode($array);

    $time4 =  microtime(true);
   /* echo $time1 - $time0;
    echo '           ';
    echo $time2 - $time1;
    echo '           ';
    echo $time3 - $time2;
    echo '           ';
    echo $time4 - $time3;*/
}
?>


