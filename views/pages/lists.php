<div class="content" style="margin-left:25%" >
        <div class="container-fluid">
          <div class="row" >
          <form action="./models/movies/insertMovie.php" method="POST">

          <span>Select List</span>
          <select name="list">
          <option value="0">Izaberite</option>
            <?php
            $query = "SELECT * FROM dailylist"; 
            $data = executeQuery($query);
            foreach($data as $list):
            ?>
            
 <option value="<?=$list->id_list?>"><?=$list->listName?></option>
            <?php endforeach;?>
          </select>

          <span>Select Day</span>
          <select name="weekDay">
          <option value="0">Izaberite</option>
          <?php
          $query = "SELECT * FROM week"; 
         
           // echo "$query";
          $data = executeQuery($query);
          
          foreach($data as $day):
          ?>
 
  <option value="<?=$day->id_day?>"><?=$day->dayName?></option>
          <?php endforeach;?>
          </select>
          <span>Select Movie</span>
          <select name="movie">
          <option value="0">Izaberite</option>
<?php
    $jsonfile = file_get_contents("data/movies.json");
    $array = json_decode($jsonfile,true);
    //var_dump($array);
    
    foreach($array as $movie):
     
?>
       <option value="<?=$movie['title']?>"><?=$movie['title']?></option>
       <?php        
    endforeach;
?>
 </select>
 <span>Recommended Movie</span>
          <select name="rmovie">
          <option value="0">Izaberite</option>
<?php
    $jsonfile = file_get_contents("data/movies.json");
    $array = json_decode($jsonfile,true);
    //var_dump($array);
    
    foreach($array as $movie):
     if($movie['imdbRating']>=7):
?>
       <option value="<?=$movie['title']?>"><?=$movie['title']?></option>
       <?php    
       endif;    
    endforeach;
?>
 </select>

 <button type="submit" class="btn" id="logButton" name="logButton">Insert</button>
 </form>
          </div>
        </div>
      </div>  