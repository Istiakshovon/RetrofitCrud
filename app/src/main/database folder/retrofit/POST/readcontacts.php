<?php 

require_once 'connection.php';

$query = mysqli_query($conn, "SELECT * FROM users ORDER BY id DESC");

$array = array();

while ($row = mysqli_fetch_assoc($query)) {
    array_push($array, array(
        'id' => $row['id'], 
        'name' => $row['name'], 
        'email' => $row['email'], ));
}

echo json_encode($array);

?>