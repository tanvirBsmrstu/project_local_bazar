<?php
require "init.php";

$user_name=$_POST["name"];
$user_id=$_POST["userId"];
$user_pass= $_POST["pass"];
$user_email=$_POST["email"];
$user_mob=$_POST["mob"];
$table_name="stu_info";

/*
$user_name="jo";
$user_id="209912010599";
$user_pass= "45456";
$user_email="454";
$user_mob="10231651";
$table_name="stu_info";
*/

	//to prevent from sql injection
	$user_id=mysqli_real_escape_string($con,$user_id);
	$user_pass=mysqli_real_escape_string($con,$user_pass);
	$user_mob=mysqli_real_escape_string($con,$user_mob);
	$user_email=mysqli_real_escape_string($con,$user_email);
	$user_name=mysqli_real_escape_string($con,$user_name);

	
	// to handle duplicate registration
	$query= "SELECT id FROM $table_name WHERE id='$user_id' ;" ;
	
	$result= mysqli_query($con,$query);
	
	if(mysqli_num_rows($result)>0){
		echo "already exists ";
	}
	else{
	
		$sql_query= "INSERT INTO  $table_name  (id,name,email,mob,pass)  VALUES( '$user_id','$user_name','$user_email','$user_mob','$user_pass') ;" ;

		$is_ok = mysqli_query($con,$sql_query); // return true or false 
		
		if($is_ok){
			echo " INSERT sucess...";
		}
		else {
			echo " INSERT error ". mysqli_error($con);
		}
	}
	
	mysqli_close($con);

?>