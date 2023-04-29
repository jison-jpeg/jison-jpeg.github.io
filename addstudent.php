<?php
include "connection.php";

$sql = " INSERT INTO `users`(`users_id`, `password`, `first_name`, `middle_name`, `last_name`, `suffix`, `sex`, `birthdate`, `contact_num`, `parent_num`, `street`, `barangay`, `municipality`, `province`, `institutional_email`, `marital_status`, `department_id`, `department_name`, `course_id`, `course_name`, `semester`, `year_level`) 
VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";


if(isset($_POST['Id'])){


$myId = $_POST['Id'];
$mypass = $_POST['pass'];
$myname = $_POST['first'];
$mymiddle = $_POST['middle'];
$mylast = $_POST['lastname'];
$mysuff = $_POST['suff'];
$mysex = $_POST['sex'];
$mybirth = $_POST['birthdate'];
$mycnumber = $_POST['cnumber'];
$mypnumber = $_POST['pnumber'];
$mystreet = $_POST['street'];
$mybarangay = $_POST['barangay'];
$mymuni = $_POST['muni'];
$myprov = $_POST['prov'];
$mymail = $_POST['Iemail'];
$myms = $_POST['ms'];
$mycollege = $_POST['college'];
$mycname = $_POST['cname'];
$mycourseid = $_POST['courseId'];
$mycoursename = $_POST['coursename'];
$mysem = $_POST['sem'];
$myYL = $_POST['YL'];

if($myId == ""){
    echo "Please fill Up the ID!";
    die();
}
$stmt = $conn->prepare($sql);
$stmt->bind_param( "iissssssiissssssssisii",$myId, $mypass, $myname, $mymiddle, $mylast, $mysuff, $mysex, $mybirth, $mycnumber, $mypnumber, $mystreet, $mybarangay, $mymuni, $myprov, $mymail, $myms, $mycollege, $mycname, $mycourseid, $mycoursename, $mysem, $myYL);
if($stmt -> execute()){
    echo "Student Inserted Succesfully";
    header("Location: Form.php");
    exit();
}else{
    echo "Student Inserted Failed";

}
   $stmt->close();
    $conn->close();
}
else{
    $conn->close();
    header("Location: error.php");
    exit();
}




?>