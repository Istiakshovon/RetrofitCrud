<?php 

require_once 'connection.php';

if ( $_SERVER['REQUEST_METHOD'] == 'POST' ){

    $name = $_POST['name'];
    $email = $_POST['email'];

    if ( $name == '' || $email == '' ){
    
     echo 'Please fill in all data!';

    } else {

        $query = "INSERT INTO users (name,email) VALUES ('$name', '$email')";

        if ( mysqli_query($conn, $query) ){
            $response["value"] = 1;
            $response["message"] = $name." 
Added success";
            echo json_encode($response);
        } else {
            $response["value"] = 0;
            $response["message"] = "Oops! ".$name." Failed to add, \n Please try again!";
            echo json_encode($response);
        }
    }

    mysqli_close($conn);

} else {
    $response["value"] = 0;
    $response["message"] = "Oops! Try again!";
    echo json_encode($response);
}

?>