<table class="table table-borderless datatable">
  <thead>
    <tr>
      <th scope="col">#ID</th>
      <th scope="col">Student</th>
      <th scope="col">Age</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  
  <tbody>

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
			echo "<td><a href='edit.php?id=" . $row['id'] . "'><button type='button' class='btn btn-primary btn-sm' data-bs-toggle='modal' data-bs-target='#ExtralargeModal'>Edit</button></a> | <a href='delete_stud.php?id=" . $row['id'] . "' onclick='return confirm(\"Are you sure?\")'><button type='button' class='btn btn-primary btn-sm'>Delete</button></a></td>";
			echo "</tr>";
		}

		// Count total number of students
		$total_students = mysqli_num_rows($result);

		// Close database connection
		mysqli_close($conn);
	?>
    
  </tbody>
</table>
