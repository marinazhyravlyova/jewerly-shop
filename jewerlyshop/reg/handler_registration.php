<?php



include ("../include/db_connect.php");
mysql_set_charset("CP1251");
include ("../function/function.php");
session_start();
    $error = array();

$login = iconv("UTF-8", "cp1251", strtolower($_POST['reg_login']));
$pass = iconv("UTF-8", "cp1251", strtolower($_POST['reg_pass']));
$surname = iconv("UTF-8", "cp1251", $_POST['reg_surname']);
$name = iconv("UTF-8", "cp1251", $_POST['reg_name']);
$patronymic = iconv("UTF-8", "cp1251", $_POST['reg_patronymic']);
$email = iconv("UTF-8", "cp1251", $_POST['reg_email']);
$phone = iconv("UTF-8", "cp1251", $_POST['reg_phone']);
$address = iconv("UTF-8", "cp1251", $_POST['reg_address']);


    if(strlen($login) < 5 or strlen($login) > 15)
    {
        $error[] ="Логин должен быть от 5 до 15 символов";
    } else {
        $result = mysql_query("SELECT login FROM reg_user WHERE login = '$login'", $link);
        if(mysql_num_rows($result) > 0)
        {
            $error[] = "Логин занят!";
        }
    }

if(strlen($pass) < 7 or strlen($pass) > 15)
    $error[] ="Пароль должен быть от 7 до 15 символов";

if(strlen($surname) < 3 or strlen($surname) > 20)
    $error[] ="Укажите фамилию от 3 до 20 символов";

if(strlen($name) < 3 or strlen($name) > 15)
    $error[] ="Укажите имя от 3 до 15 символов";

if(strlen($patronymic) < 3 or strlen($patronymic) > 25)
    $error[] ="Укажите отчество от 3 до 25 символов";

if(strlen($email) == '')
    $error[] ="Укажите корректный E-mail";

if(strlen($phone) == '')
    $error[] ="Укажите номер телефона!";

if(strlen($address) == '')
    $error[] ="Необходимо указать адрес доставки!";

if (count($error))
{
    echo implode('<br />', $error);
} else{
    mysql_query(" INSERT  INTO reg_user (login, pass, surname, name, patronymic,
     email, phone, address)
     VALUES(
           '".$login."',
           '".$pass."',
           '".$surname."',
           '".$name."',
           '".$patronymic."',
           '".$email."',
           '".$phone."',
           '".$address."'
           
     )", $link);
echo  'true';
}
























