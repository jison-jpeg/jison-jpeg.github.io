<?php
// Connect to database
$conn = mysqli_connect('localhost', 'root', 'admin', 'stud_db');

// Get form data
$name = $_POST['name'];
$age = $_POST['age'];

// Insert new student into database
mysqli_query($conn, "INSERT INTO students (name, age) VALUES ('$name', '$age')");

// Close database connection
mysqli_close($conn);

// Redirect back to index.php
header("Location: enrolled.php");
?>
