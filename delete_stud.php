<?php
// Connect to database
$conn = mysqli_connect('localhost', 'root', 'admin', 'stud_db');

// Get student ID from URL parameter
$id = $_GET['id'];

// Delete student from database
mysqli_query($conn, "DELETE FROM students WHERE id='$id'");

// Close database connection
mysqli_close($conn);

// Redirect back to index.php
header("Location: enrolled.php");
?>