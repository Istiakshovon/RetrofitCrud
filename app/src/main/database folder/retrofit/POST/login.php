<?php 

require_once 'connection.php';

if ( $_SERVER['REQUEST_METHOD'] == 'POST' ){

   
    $cell = $_POST['cell'];
    $password = $_POST['password'];

    if ( $cell == '' || $password =='' ){
    
     echo 'Please fill in all data!';

    } else {


        $sql="SELECT * FROM member where cell='$cell' AND password='$password'";
        
        
        $result =  mysqli_query($conn,$sql);
        $num_rows =mysqli_num_rows($result);
  
  
        if($num_rows>0)
	
       {
        $response["value"] = "success";
        $response["message"] = "Login Successfull!";
        echo json_encode($response);
       }
       
       else {
            $response["value"] = "failure";
            $response["message"] ="Invalid cell or password!";
            echo json_encode($response);
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