<?php


include('../connection.php');
$obj=new connection();

$t=$_POST['title'];
$c=$_POST['comp'];
$ty=$_POST['ty'];
$l=$_POST['loc'];
$d=$_POST['des'];
$e=$_POST['exp'];
$em=$_POST['web'];
$co=$_POST['code'];
$da=$_POST['date'];
$lda=$_POST['ldate'];

 $in="insert into postjob(jobcode,title,comp,type,loc,des,exp,website,date,ldate)values('$co','$t','$c','$ty','$l','$d','$e','$em','$da','$lda')";
$ex=$obj->execute($in);
/*if(isset($_POST['']))
{
$se="select max(id) from postjob";
$ax=$obj->execute($se);
$fe=mysqli_fetch_array($ax);
$id=$fe[0];

}*/
header("location:new-post.php")
?>