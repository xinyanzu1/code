<?php

require('DB.php');


// Do a query
$query  = "SELECT id, amount, price, vip_price "; 
$query .= "FROM deluxe_double_room ";


$result = mysqli_query($connection, $query);

if (!$result) {
    die("query is wrong");
}

?>

<html>
    <head>
    <title>deluxe double room</title>
    </head>
    <body>
        <p align='center'><b>deluxe double room</b></p>
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
<br/>           
<br/>
</body>
</html>