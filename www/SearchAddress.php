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

$Address = $_POST["Address"];
//$stmt->bind_param('i', $MovieName);
$stmt = $conn->prepare("SELECT Customer_ID, First_Name, Last_Name, Address, Phone_Number, Email  FROM Customers WHERE Address LIKE '".$Address."%'");
$stmt->execute();
$result = $stmt->get_result();

print("<html>");
if ($result->num_rows > 0) {
	// output data of each row
	while($row = $result->fetch_assoc()) {
		printf("<div>Customer ID= %s | First Name =  %s | Last Name=  %s | Address =  %s | Phone Number =  %s | Email =  %s</div>", $row["Customer_ID"], $row["First_Name"], $row["Last_Name"], $row["Address"], $row["Phone_Number"], $row["Email"]);
		
	}
} else {
	print("<div>No Customers found!</div>");
}

print("</html>");
$conn->close();

?>
