<?php
  require_once "config/connection.php";
  
  include "views/fixed/head.php";
  include "views/fixed/sidebar.php";
  //include "views/fixed/header.php";

  if(isset($_GET['page'])){
    switch($_GET['page'])
    {
     
      case 'zadatak': // ?page=zadatak
        include "views/pages/zadatak.php";
        break;
        case 'recommended': 
        include "views/pages/recommended.php";
        break;
        case 'lists': 
        include "views/pages/lists.php";
        break;
        case 'dodList': 
        include "views/pages/dodList.php";
        break;

        default :
        include "views/pages/zadatak.php";
       break;
    }
  } else {
    include "views/pages/zadatak.php";
  }
  include "views/fixed/footer.php";
?>


      