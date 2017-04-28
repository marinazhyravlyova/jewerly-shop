<?php
$db_host = 'localhost';
$db_user = 'marina';
$db_pass = 'marina';
$db_database = 'jewelryshop';

$link = mysql_connect($db_host, $db_user, $db_pass);

mysql_select_db($db_database, $link) or die("Нет соединения с БД".mysql_error());


mysql_query("SET names UTF-8");/*
$db_host = 'localhost';
$db_user = 'u444885726_marin';
$db_pass = '270797';
$db_database = 'u444885726_jewel';*/

/*$mysqli = new mysqli("localhost", $db_user, $db_pass, $db_database);
if ($mysqli->connect_errno) {
    echo "Не удалось подключиться к MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
$link = mysql_connect($db_host, $db_user, $db_pass);

mysql_select_db($db_database, $link) or die("Нет соединения с БД".mysql_error());


mysql_query("SET names UTF-8");*/