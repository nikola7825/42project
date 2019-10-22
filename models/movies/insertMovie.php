<?php
include "../../config/connection.php";

if(isset($_POST["logButton"])){
 //   echo "Ubicu se";
    $weekDay = $_POST["weekDay"];
    $list = $_POST["list"];
    $movie = $_POST["movie"];

    $upit_unos = $conn->prepare("INSERT INTO listdays VALUES('', :id_day, :id_list, :Movie)");

    $upit_unos->bindParam(":id_day", $weekDay);
    $upit_unos->bindParam(":id_list", $list);
    $upit_unos->bindParam(":Movie", $movie);
   
    $result = $upit_unos->execute();

}
header('Location: ../../index.php?page=lists');