<?php
	require "init.php";
	
	$user_id=$_POST["userId"];
	$user_pass=$_POST["pass"];
	$table_name= "stu_info";
/*$user_id="5";
$user_pass= "5";
*/
	//to prevent from sql injection
	$user_id=mysqli_real_escape_string($con,$user_id);
	$user_pass=mysqli_real_escape_string($con,$user_pass);
	
	$sql_query= "SELECT * FROM  $table_name  WHERE id='$user_id' && pass='$user_pass' ;" ;
	$result=mysqli_query($con,$sql_query);
	
	if(mysqli_num_rows($result)>0){		// if already registered 
		$row= mysqli_fetch_assoc($result);
		
		$respons=array();
                array_push($respons, array("name"=>$row["name"],"id"=>$row["id"],"pass"=>$row["pass"],"email"=>$row["email"],"mob"=>$row["mob"]));  
                echo json_encode(array("basicInfo"=> $respons));  // nameValue pair is array,,encode the json as array
                
        }
	else {
		echo " wrong id or password  ";
	}
	
	mysqli_close($con);
	

?>