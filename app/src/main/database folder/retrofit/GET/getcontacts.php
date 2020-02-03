<?php 

require_once 'connect.php';

$type = $_GET['item_type']; //retrive item type //users

if (isset($_GET['key'])) { //if the key is set // takes the password // the word forword search typed
    $key = $_GET["key"];
    if ($type == 'users') { //check item_type whether == users
        $query = "SELECT * FROM users WHERE name LIKE '%$key%'";
        $result = mysqli_query($conn, $query);
        $response = array();
        while( $row = mysqli_fetch_assoc($result) ){
            array_push($response, 
            array(
                'id'=>$row['id'], 
                'name'=>$row['name'], 
                'email'=>$row['email']) 
            );
        }
        echo json_encode($response);   
    }
} else { // if the search keyword is not set
    if ($type == 'users') {
        $query = "SELECT * FROM users";
        $result = mysqli_query($conn, $query);
        $response = array();
        while( $row = mysqli_fetch_assoc($result) ){
            array_push($response, 
            array(
                'id'=>$row['id'], 
                'name'=>$row['name'], 
                'email'=>$row['email']) 
            );
        }
        echo json_encode($response);   
    }
}

mysqli_close($conn);

?>