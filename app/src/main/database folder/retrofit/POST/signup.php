<?php 

require_once 'connection.php';

if ( $_SERVER['REQUEST_METHOD'] == 'POST' ){

    $name = $_POST['name'];
    $cell = $_POST['cell'];
    $password = $_POST['password'];

    if ( $name == '' || $cell == '' || $password =='' ){
    
     echo 'Please fill in all data!';

    } else {


        $check_user="SELECT cell FROM member where cell='$cell'";
        $query = "INSERT INTO member (name,cell,password) VALUES ('$name', '$cell','$password')";
        
        $result =  mysqli_query($conn,$check_user);
        $num_rows =mysqli_num_rows($result);
  
  
        if($num_rows>0)
	
       {
        $response["value"] = "exists";
        $response["message"] = "User Already Exits!";
        echo json_encode($response);
       }
       
       else
       {

        if ( mysqli_query($conn, $query) ){
            $response["value"] = "success";
            $response["message"] = "Signup Successfull";
            echo json_encode($response);
            
        } else {
            $response["value"] = "failure";
            $response["message"] ="Failed to add, \n Please try again!";
            echo json_encode($response);
        }
        
       }
    }

   

} else {
    $response["value"] = 0;
    $response["message"] = "Oops! Try again!";
    echo json_encode($response);
}

//close db connection
 mysqli_close($conn);

?>