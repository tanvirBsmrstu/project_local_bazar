<?php

require 'init.php';

 $tnx = $_POST['tnx'];
  $stuId = $_POST['id'];
 

$logTable = 'logbybkash';
$payCodeTable = 'paycode';


$quary = "SELECT * FROM $logTable  Where TnxId='$tnx'  ; ";

$result = mysqli_query($con, $quary);

if (mysqli_num_rows($result) > 0) {

    $raw = mysqli_fetch_assoc($result);
    $pcode = $raw['Pay_code'];
    $amount = $raw['amount'];
    $stat = $raw['stat'];
    if ($stat == 0) {
        $quary = "SELECT * FROM $payCodeTable Where pay_code='$pcode' ; ";
        $cm = mysqli_query($con, $quary);
        $cr = mysqli_fetch_assoc($cm);

        $p_code_amount = $cr['fee'];
        if ($amount >= $p_code_amount) {
            $quary = "UPDATE  $logTable  SET submitId= $stuId , stat=1  Where TnxId='$tnx' ;";
            $is = mysqli_query($con, $quary);
            if ($is) {
                echo 'Payment successfull ';
            } else {
                echo 'faild to update ' ;
            }
        } else {
            echo "paid ballance is low ";
        }
    } else {
        echo 'wrong Tnx id ';
    }
} else {
    echo "sorry Tnx doesn't exists ";
}
mysqli_close($con);

php
?>

