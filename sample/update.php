<?php
// Connect to database
$conn = mysqli_connect('localhost', 'root', 'admin', 'stud_db');

// Get form data
$id = $_POST['id'];
$name = $_POST['name'];
$age = $_POST['age'];

// Update student in database
mysqli_query($conn, "UPDATE students SET name='$name', age='$age' WHERE id='$id'");

// Close database connection
mysqli_close($conn);

// Redirect back to index.php
header("Location: index.php");
?>
