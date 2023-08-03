<?php
echo "Start of PHP code.<br>";

session_start();
echo "Session started.<br>";

include('connection.php');
echo "Connection.php included.<br>";

$obj = new connection();
echo "Connection object created.<br>";

$un = $_POST['uname'];
$pd = $_POST['pwd'];

$se = "select * from login where username='$un' and password='$pd'";
echo "Query: $se<br>";

$ex = $obj->execute($se);
echo "Query executed.<br>";

$fe = mysqli_fetch_array($ex);

$_SESSION['logid'] = $fe[0];
$_SESSION['uname'] = $fe[1];
$_SESSION['email'] = $fe[4];

if ($fe[3] == 'admin') {
    header("location:admin/home.php");
    echo "Redirecting to admin/home.php.<br>";
} else {
    ?>
    <script>
        alert('invalid user name and password');
        window.location='login.php';
    </script>
    <?php
    echo "JavaScript alert shown and redirected to login.php.<br>";
}
echo "End of PHP code.<br>";
?>
