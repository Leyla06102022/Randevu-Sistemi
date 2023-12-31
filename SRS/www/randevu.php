<?php include 'header.php';?>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sağlık Randevu Sistemi</title>
</head>
<body>

<table>
    <tr>
        <th>Hastane</th>
        <th>Klinik</th>
        <th>Doktor</th>
        <th>İl</th>
        <th>Tarih</th>
    </tr>

    <?php
    $randevu_sor =$db->prepare("SELECT * FROM randevu
    INNER JOIN kullanici ON randevu.randevu_hasta_id = kullanici.kullanici_id WHERE kullanici_tc=:kullanici_tc");
    $randevu_sor->execute([
        'kullanici_tc' =>$_SESSION['userkullanici_tc']
    ]);
    
  
    while($randevu_cek = $randevu_sor->fetch(PDO::FETCH_ASSOC)){  
        echo "<tr>";  
      echo "<td>" .$randevu_cek['randevu_hastane']." </td>";  
      echo "<td>" .$randevu_cek['randevu_klinik']." </td>"; 
      echo "<td>" .$randevu_cek['randevu_doktor']." </td>"; 
      echo "<td>" .$randevu_cek['randevu_sehir']." </td>"; 
      echo "<td>" .$randevu_cek['randevu_tarih']." </td>";  
        echo "</tr>";  
     
    }   
    
    
    ?>
</table>
</body>
</html>