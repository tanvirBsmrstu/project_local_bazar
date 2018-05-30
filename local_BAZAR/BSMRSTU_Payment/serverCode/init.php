<?PHP
$server_name="localhost";
$database_name="uni_online_payment";
$mysql_username="root";
$mysql_pass="";

		//$mysqli= new mysqli($server_name,$mysql_username,$mysql_pass,$database_name);
$con= mysqli_connect($server_name,$mysql_username,$mysql_pass,$database_name);
if ($con != null) {
    //echo "database access sucessfull ...";
} else {
    die(" database connection error .. " . mysqli_connect_error());
}
?>