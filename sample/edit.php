<!DOCTYPE html>
<html>
<head>
	<title>Edit Student</title>
</head>
<body>
	<h1>Edit Student</h1>
	<?php
	// Connect to database
	$conn = mysqli_connect('localhost', 'root', 'admin', 'stud_db');

	// Get student ID from URL parameter
	$id = $_GET['id'];

	// Query student by ID
	$result = mysqli_query($conn, "SELECT * FROM students WHERE id='$id'");
	$row = mysqli_fetch_assoc($result);
	?>
	<form method="post" action="update.php">
		<input type="hidden" name="id" value="<?php echo $row['id']; ?>">
		<label>Name:</label>
		<input type="text" name="name" value="<?php echo $row['name']; ?>"><br>
		<label>Age:</label>
		<input type="number" name="age" value="<?php echo $row['age']; ?>"><br>
		<input type="submit" value="Save">
	</form>
	<?php
	// Close database connection
	mysqli_close($conn);
	?>
</body>
</html>
