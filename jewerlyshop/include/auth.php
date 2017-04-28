<?php
if($_SERVER["REQUEST_METHOD"] == "POST") {
    include("../include/db_connect.php");


    $login = $_POST["login"];

    $pass = $_POST["pass"];
  



    $result = mysql_query("SELECT * FROM reg_user WHERE login = '$login' AND pass ='$pass'", $link);
    if(mysql_num_rows($result) > 0){
        $row = mysql_fetch_array($result);
        session_start();
        $_SESSION['auth'] = 'yes_auth';
        $_SESSION['auth_pass'] = $row["pass"];
        $_SESSION['auth_surname'] = $row["surname"];
        $_SESSION['auth_name'] = $row["name"];
        $_SESSION['auth_address'] = $row["address"];
        $_SESSION['auth_phone'] = $row["phone"];
        $_SESSION['auth_email'] = $row["email"];
        echo 'yes_auth';
    } else {
        echo 'no_auth'; 
    }
}
?>