<?php
// Connect to database
$conn = mysqli_connect('localhost', 'root', 'admin', 'stud_db');

// Query all students
$result = mysqli_query($conn, "SELECT * FROM students");

// Count total number of students
$total_students = mysqli_num_rows($result);
?>

<!-- Students Card -->
<div class="col-xxl-4 col-md-6">
    <div class="card info-card sales-card" id="main-dash">
        <a href="enrolled.php">    
            <div class="card-body">
                <h5 class="card-title">Students <span>| Main Campus</span></h5>

                <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                        <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                        <?php
                        // Display total number of students
                        echo "<h6>" . $total_students . "</h6>";
                        mysqli_close($conn);
                        ?>
                        <span class="text-muted small pt-2 ps-1">Enrolled Students</span>
                    </div>
                </div>
            </div>
        </a>
    </div>
</div>


<!-- End Student Card -->

<!-- Instructors Card -->
<div class="col-xxl-4 col-md-6">
    <div class="card info-card revenue-card" id="main-dash">

        <div class="card-body">
            <h5 class="card-title">Instructors <span>| Main Campus</span></h5>

            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-person"></i>
                </div>
                <div class="ps-3">
                    <h6>3</h6>
                    <span class="text-muted small pt-2 ps-1">Official Instructors</span>

                </div>
            </div>
        </div>

    </div>
</div>
<!-- End Instructors Card -->

<!-- College Card -->
<div class="col-xxl-4 col-xl-12">

    <div class="card info-card customers-card" id="main-dash">

        <div class="card-body">
            <h5 class="card-title">College <span>| Main Campus</span></h5>

            <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-briefcase"></i>
                </div>
                <div class="ps-3">
                    <h6>1244</h6>
                    <span class="text-muted small pt-2 ps-1">Total Colleges</span>

                </div>
            </div>

        </div>
    </div>

</div>
<!-- End College Card -->