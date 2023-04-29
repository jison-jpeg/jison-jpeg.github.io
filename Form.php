<?php
include_once "header.php";

?>
<main id="main" class="main">

<div class="pagetitle">
  <h1>Dashboard</h1>
  <nav>
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="index.php">Home</a></li>
      <li class="breadcrumb-item active">Dashboard</li><br>
    </ol>
  </nav>
</div>
<section class="section dashboard">
  <div class="row">
    <div class="col-lg-8">
      <div class="row">      
            <div class="card-body" id="top-buttons">
                <form id="Form" action="addstudent.php" method="POST">
                <div class="card-body">
                  <input type="number" id="ID" placeholder="Enter ID" name="Id">
                  <input type="password" id="Password" placeholder="Enter Password" name="pass">
                  <input type="text" id="Firstname" placeholder="Enter First Name" name="first">
                  <input type="text" id="Middlename" placeholder="Enter Middlename" name="middle">
                  <input type="text" id="Lastname" placeholder="Enter Lastname" name="lastname">
                 <input type="text" id="Suffix" placeholder="suffix" name="suff">
                  <select id="sex" name="sex">
                    <option>Select Gender</option>
                    <option>Male</option>
                    <option>Female</option>
                  </select>
                  <input type="text" id="Birthdate" placeholder="Enter Birthdate" name="birthdate">
                  <input type="number" id="ContactNumber" placeholder="Enter Contact Number" name="cnumber">
                  <input type="number" id="ParentNumber" placeholder="Enter Parent Contact number " name="pnumber">
                  <input type="text" id="Street" placeholder="Street" name="street">
                  <input type="text" id="Barangay" placeholder="Barangay" name="barangay">
                 <input type="text" id="Municipality" placeholder="Enter your Municipality" name="muni">
                  <input type="text" id="Province" placeholder="Province" name="prov">
                  <input type="email" id="InstitutionalEmail" placeholder="Enter your Institutional Email" name="Iemail">
                  <select id="MaritalStatus" name="ms">
                    <option>Select Status</option>
                    <option>Single</option>
                    <option>Married</option>
                    <option>Widowed</option>
                    <option>Divorced</option>
                    <option>Separated</option>
                  </select>
                <input type="number" id="CollegeID" placeholder="Enter your College ID" name="college">
                 <input type="text" id="CollegeName" placeholder="Enter your CollegeName" name="cname">
                  <input type="number" id="CourseID" placeholder="Enter your courseId" name="courseId">
                  <input type="text" id="CourseName" placeholder="Enter your courseName" name="coursename">
                  <input type="number" id="Semester" placeholder="Semester" name="sem">
                  <input type="number" id="YearLevel" placeholder="Your Year Level" name="YL">
                   <button class="btn btn-primary w-100" type="submit" id="Submit">Submit</button>
                   </form>








<?php
include_once "footer.php";

?>



