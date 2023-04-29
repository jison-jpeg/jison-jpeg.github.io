<!-- <div class="modal fade" id="ExtralargeModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add Student</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="row g-3">
                    <div class="col-md-6">
                        <label for="inputName5" class="form-label">Last Name</label>
                        <input type="text" class="form-control" id="inputName5">
                    </div>
                    <div class="col-md-6">
                        <label for="inputName5" class="form-label">First Name</label>
                        <input type="text" class="form-control" id="inputName5">
                    </div>
                    <div class="col-md-6">
                        <label for="inputEmail5" class="form-label">Institutional Email</label>
                        <input type="email" class="form-control" id="inputEmail5">
                    </div>
                    <div class="col-md-6">
                        <label for="inputPassword5" class="form-label">Password</label>
                        <input type="password" class="form-control" id="inputPassword5">
                    </div>
                    <div class="col-12">
                        <label for="inputAddress5" class="form-label">Address</label>
                        <input type="text" class="form-control" id="inputAddres5s" placeholder="1234 Syre Highway">
                    </div>
                    <div class="col-md-6">
                        <label for="inputCity" class="form-label">City</label>
                        <input type="text" class="form-control" id="inputCity">
                    </div>
                    <div class="col-md-6">
                        <label for="inputCity" class="form-label">Province</label>
                        <input type="text" class="form-control" id="inputCity">
                    </div>
                    <div class="col-md-12">
                        <label for="inputState" class="form-label">Course</label>
                        <select id="inputState" class="form-select" onchange="updateChoices()">
                            <option selected>Choose...</option>
                            <option value="ug">Undergraduate Programs</option>
                            <option value="grad">Graduate Programs</option>
                        </select>
                    </div>
                    <div class="col-md-12" id="courseList">
                        <label for="courses" class="form-label">Courses</label>
                        <select id="courses" class="form-select">
                            <option selected>Please select an option above</option>
                        </select>
                    </div>
                    <script>
                        function updateChoices() {
                            const courseList = document.getElementById('courseList');
                            const courses = document.getElementById('courses');
                            const selectedOption = document.getElementById('inputState').value;

                            if (selectedOption === 'ug') {
                                courseList.style.display = 'block';
                                courses.innerHTML = `
                                          <option value="ca">College of Administration</option>
                                          <option value="cas">College of Arts and Sciences</option>
                                          <option value="cb">College of Business</option>
                                          <option value="ce">College of Education</option>
                                          <option value="cn">College of Nursing</option>
                                          <option value="ct">College of Technology</option>
                                      `;
                            } else if (selectedOption === 'grad') {
                                courseList.style.display = 'block';
                                courses.innerHTML = `
                                          <option value="mba">Master of Business Administration (MBA)</option>
                                          <option value="med">Master of Education (MEd)</option>
                                          <option value="msn">Master of Science in Nursing (MSN)</option>
                                          <option value="msit">Master of Science in Information Technology (MSIT)</option>
                                          <option value="phd">Doctor of Philosophy (PhD)</option>
                                      `;
                            } else {
                                courseList.style.display = 'none';
                                courses.innerHTML = '<option selected>Please select an option above</option>';
                            }
                        }
                    </script>

                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-secondary">Reset</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div> -->

<!------------------------------------------------------------------------------>


<div class="modal fade" id="ExtralargeModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add Student</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="row g-3" method="post" action="save_stud.php">
                    <div class="col-md-6">
                        <label class="form-label">Full Name</label>
                        <input type="text" class="form-control" name="name">
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Age</label>
                        <input type="number" class="form-control" name="age">
                    </div>
                   
                    <div class="text-center">
                        <input type="submit" class="btn btn-primary" value="Submit">
                        <!-- <button type="submit" class="btn btn-primary">Submit</button> -->
                        <button type="reset" class="btn btn-secondary">Reset</button>
                    </div>
                </form>
            </div>
            <!-- <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div> -->
        </div>
    </div>
</div>