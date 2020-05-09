<?php

ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);
error_reporting(-1);

$servername = "db";
$username = "root";
$password = "it635";
$dbname = "VHS_Rental";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}
$FirstName = $_POST["FirstName"];
$LastName = $_POST["LastName"];
$Address = $_POST["Address"];
$PhoneNumber = $_POST["PhoneNumber"];
$Email = $_POST["Email"];


$sql = "INSERT INTO `Customers` (`First_Name`, `Last_Name`, `Address`, `Phone_Number`, `Email`)
VALUES ('$FirstName', '$LastName', '$Address', '$PhoneNumber', '$Email')";


if ($conn->query($sql) === TRUE) {
    echo "Customer Successfully added to Database";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
};
$conn->close();

?>
