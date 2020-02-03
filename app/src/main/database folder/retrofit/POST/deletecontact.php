<?php 

require_once 'connection.php';

if ( $_SERVER['REQUEST_METHOD'] == 'POST' ){

    $id = $_POST['id'];
    //$name = $_POST['name'];

    $query = "DELETE FROM users WHERE id = '$id' ";

        if ( mysqli_query($conn, $query) ){
            $response["value"] = 1;
            $response["message"] = $name." Successfully deleted";
            echo json_encode($response);
        } else {
            $response["value"] = 0;
            $response["message"] = "Oops! ".$name." Failed to delete, \n 
            Please try again!";
            echo json_encode($response);
        }

    mysqli_close($conn);

} else {
    $response["value"] = 0;
    $response["message"] = "Please try again!";
    echo json_encode($response);
}

?>