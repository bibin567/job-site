<?php
session_start();
include('connection.php');
$obj=new connection();


$un=$_POST['uname'];
$pd=$_POST['pwd'];

$se="select * from login where username='$un' and password='$pd'";
$ex=$obj->execute($se);
$fe=mysqli_fetch_array($ex);

$_SESSION['logid']=$fe[0];
$_SESSION['uname']=$fe[1];
$_SESSION['email']=$fe[4];

if($fe[3]=='admin')
{
header("location:admin/home.php");
}



else
{
?>
<script>
alert('invalid user name and password');
window.location='login.php';
</script>
<?php
}

?>