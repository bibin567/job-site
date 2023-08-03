<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

class connection
{
    var $con, $res;

    function getconnect()
    {
        $this->con = mysqli_connect("localhost", "root", "admin");
        if (!$this->con) {
            die("Connection failed: " . mysqli_connect_error());
        }
        mysqli_select_db($this->con, "jobportal");
    }

    function execute($q)
    {
        $this->getconnect();
        $this->res = mysqli_query($this->con, $q);
        if (!$this->res) {
            die("Query execution failed: " . mysqli_error($this->con));
        }
        return $this->res;
    }
}
?>
