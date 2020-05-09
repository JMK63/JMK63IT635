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
//$stmt->bind_param('i', $MovieName);
$stmt = $conn->prepare("SELECT Movie_ID, Movie_Name, Genre, Stock_Amount, Rental_Rate  FROM Movies WHERE Movie_Name LIKE '".$MovieName."%'");
$stmt->execute();
$result = $stmt->get_result();

print("<html>");
if ($result->num_rows > 0) {
	// output data of each row
	while($row = $result->fetch_assoc()) {
		printf("<div>Movie ID= %s | Movie=  %s | Genre=  %s | Stock Amount=  %s | Rental Rate=$  %s</div>", $row["Movie_ID"], $row["Movie_Name"], $row["Genre"], $row["Stock_Amount"], $row["Rental_Rate"]);
		
	}
} else {
	print("<div>No Movies found!</div>");
}

print("</html>");
$conn->close();

?>
