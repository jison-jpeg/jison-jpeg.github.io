<!DOCTYPE html>
<html>
<head>
	<title>Student Information</title>
</head>
<body>
	<h1>Student Information</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Age</th>
			<th>Action</th>
		</tr>
		<?php
		// Connect to database
		$conn = mysqli_connect('localhost', 'root', 'admin', 'stud_db');

		// Query all students
		$result = mysqli_query($conn, "SELECT * FROM students");

		// Display each row as a table row
		while ($row = mysqli_fetch_assoc($result)) {
			echo "<tr>";
			echo "<td>" . $row['id'] . "</td>";
			echo "<td>" . $row['name'] . "</td>";
			echo "<td>" . $row['age'] . "</td>";
			echo "<td><a href='edit.php?id=" . $row['id'] . "'>Edit</a> | <a href='delete_.php?id=" . $row['id'] . "' onclick='return confirm(\"Are you sure?\")'>Delete</a></td>";
			echo "</tr>";
		}

		// Count total number of students
		$total_students = mysqli_num_rows($result);

		// Display total number of students
		echo "<tr>";
		echo "<td colspan='3'>Total number of students:</td>";
		echo "<td>" . $total_students . "</td>";
		echo "</tr>";

		// Close database connection
		mysqli_close($conn);
		?>
	</table>
	<p><a href="add.php">Add Student</a></p>
</body>
</html>
