<?php

require('DB.php');


// Do a query
$query  = "SELECT id, amount, price, vip_price "; 
$query .= "FROM singleroom ";


$result = mysqli_query($connection, $query);

if (!$result) {
    die("query is wrong");
}

?>

<html>
    <head>
    <title>singleroom</title>
    <link type='text/css' rel='stylesheet' href='room.css'>
    </head>
    <body>
        <p align='center'><b>singleroom</b></p>
     <div class="room">
     <table border="double" cellpadding="2" cellspacing="1" align="center">
     <tr>
     <td>amount</td>
     <td>price</td>
     <td>vip_price</td>
     </tr>      
<?php
    
//  use/show data
while ($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    echo "<td>" . $row["amount"] . "</td>";
    echo "<td>" . $row["price"] . "</td>";
    echo "<td>" . $row["vip_price"] . "</td>";
    echo "</tr>";
}

?>
</table>
</div>
<br/>           
<br/>
</body>
</html>