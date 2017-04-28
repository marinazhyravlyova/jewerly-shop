<?php
header("Content-Type: application/json; charset=utf-8");

include ("include/db_connect.php");

?>

<?php
$product_id = $_GET["product_id"];

$result = mysql_query("SELECT * FROM table_prodacts WHERE prodact_id='$product_id'", $link);
$time2 =  microtime(true);
if(mysql_num_rows($result) > 0)
{

    $row = mysql_fetch_array($result);
    $array = array();

    do{

        $new_product = (object) array(
            "productId" => $row["prodact_id"],
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

}
?>


