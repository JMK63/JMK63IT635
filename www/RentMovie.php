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
$CustID = $_POST["CustID"];
$MovieID = $_POST["MovieID"];
$RentalRate = $_POST["RentalRate"];
$Quantity = $_POST["Quantity"];

$sql = "INSERT INTO `Rentals` (`Customer_ID`, `Movie_Id`, `Rental_Date`, `Rental_Rate`)
VALUES ('$CustID', '$MovieID', now(), '$RentalRate')";

$sql2 = "UPDATE VHS_Rental.Movies SET Stock_Amount = Stock_Amount - $Quantity WHERE Movie_ID = $MovieID";

if ($conn->query($sql,) === TRUE) {
    echo "Movie Rental Successfull";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
};

if ($conn->query($sql2) === TRUE) {
    echo "	|	Movie stock update Successfull";
} else {
    echo "Error: " . $sql2 . "<br>" . $conn->error;
};
$conn->close();

?>
