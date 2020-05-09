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
$MovieName = $_POST["MovieName"];
$MovieGenre = $_POST["MovieGenre"];
$MovieYear = $_POST["MovieYear"];
$RentalRate = $_POST["RentalRate"];
$RentDuration = $_POST["RentDuration"];
$StockAmount = $_POST["StockAmount"];


$sql = "INSERT INTO `Movies` (`Movie_Name`, `Genre`, `Year`, `Rental_Rate`, `Rental_Duration`, `Stock_Amount`)
VALUES ('$MovieName', '$MovieGenre', '$MovieYear', '$RentalRate', '$RentDuration', '$StockAmount')";


if ($conn->query($sql) === TRUE) {
    echo "Movie Successfully added to Database";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
};
$conn->close();

?>
