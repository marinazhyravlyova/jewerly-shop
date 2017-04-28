<?php
header("Content-Type: application/json; charset=utf-8");

include ("include/db_connect.php");

?>

<?php
$id = $_POST["id"];

$result = mysql_query("SELECT * FROM cart WHERE cart_id_product='$id'", $link);

if(mysql_num_rows($result) > 0)
{

    $row = mysql_fetch_array($result);
    $new_count = $row["cart_count"] + 1;
    $update = mysql_query("UPDATE cart SET cart_count='$new_count' WHERE  cart_id_product='$id', $link");
} else {
    $result = mysql_query("SELECT * FROM table_prodacts WHERE prodact_id='$id'", $link);
    $row = mysql_fetch_array($result);

    mysql_query(" INSERT  INTO cart (cart_id_product, cart_price, cart_datatime)
     VALUES(
           '".$id."',
           '".$row['price']."',
            NOW()
           
     )", $link);
}
?>
























