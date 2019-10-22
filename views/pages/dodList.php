<div class="content" style="margin-left:25%" >
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <?php
            $query = "SELECT * FROM week"; 
            $data = executeQuery($query);
            foreach($data as $day):
            ?>
      <th scope="col"><?=$day->dayName?></th>
    
            <?php endforeach;?>
    </tr>
  </thead>
  <tbody>
  <?php
            $query = "SELECT * FROM listdays l INNER JOIN dailylist d on d.id_list=l.id_list GROUP BY l.id_list"; 
            $data = executeQuery($query);
            foreach($data as $list):
            ?>
    <tr>
      <th scope="row"><?=$list->listName?></th>
    
      <td><?php if($list->id_day == 1) echo $list->Movie?></td>
      <td><?php if($list->id_day == 2) echo $list->Movie?></td>
      <td><?php if($list->id_day == 3) echo $list->Movie?></td>
      <td><?php if($list->id_day == 4) echo $list->Movie?></td>
      <td><?php if($list->id_day == 5) echo $list->Movie?></td>
      <td><?php if($list->id_day == 6) echo $list->Movie?></td>
      <td><?php if($list->id_day == 7) echo $list->Movie?></td>
   
    </tr>
    <?php endforeach;?>
    
   
  </tbody>
</table>
</div>