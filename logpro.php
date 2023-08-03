<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

echo "Start of PHP code.<br>";

session_start();
echo "Session started.<br>";

include('connection.php');
echo "Connection.php included.<br>";

$obj = new connection();
echo "Connection object created.<br>";

$un = isset($_POST['uname']) ? $_POST['uname'] : '';
$pd = isset($_POST['pwd']) ? $_POST['pwd'] : '';

// Basic input validation
if (empty($un) || empty($pd)) {
    echo "Invalid username or password.<br>";
    header("location: login.php"); // Redirect to login page if credentials are missing
    exit(); // Stop executing further
}

$se = "SELECT * FROM login WHERE username='$un' AND password='$pd'";
echo "Query: $se<br>";

$ex = $obj->execute($se);
echo "Query executed.<br>";

$fe = mysqli_fetch_array($ex);

if ($fe) { // Check if the result is not empty
    $_SESSION['logid'] = $fe[0];
    $_SESSION['uname'] = $fe[1];
    $_SESSION['email'] = $fe[4];

    if ($fe[3] == 'admin') {
        echo "Redirecting to admin/home.php.<br>";
        header("location: admin/home.php");
        exit(); // Stop executing further
    } else {
        echo "Invalid user name and password.<br>";
        header("location: login.php"); // Redirect to login page if user is not an admin
        exit(); // Stop executing further
    }
} else {
    echo "Invalid user name and password.<br>";
    header("location: login.php"); // Redirect to login page if no matching user found
    exit(); // Stop executing further
}

echo "End of PHP code.<br>";
?>
