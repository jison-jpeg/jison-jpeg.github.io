 <?php
include "header.php"
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
                  <h5 class="card-title">List of Students <span>| Main Campus</span></h5>
              </div>
             
              <div style="overflow-x: auto;">
              <table class="table" style="background: black; border: 1px solid black; color: white; font-family: 'Times New Roman', Times, serif; margin: auto;">
   <thead class="table-dark">
  
    </thead>
    <tbody>
      <tr>
        <th>STUDENT ID</th>
        <th>PASSWORD</th>
        <th>FIRSTNAME</th>
        <th>MIDDLENAME</th>
        <th>LASTNAME</th>
        <th>SUFFIX</th>
        <th>SEX</th>
        <th>BIRTHDATE</th>
        <th>CONTACT NUMBER</th>
        <th>PARENT CONTACT</th>
        <th>STREET</th>
        <th>BARANGAY</th>
        <th>MUNICIPALITY</th>
        <th>PROVINCE</th>
        <th>INSTITUTIONAL EMAIL</th>
        <th>MARITAL STATUS</th>
        <th>COLLEGE ID </th>
        <th>COLLEGE NAME</th>
        <th>COURSE ID </th>
        <th>COURSE NAME</th>
        <th>SEMESTER</th>
        <th>YEAR LEVEL</th>
      </tr>
    </tbody>
  </table>
</div>
                    <tbody>
                      <tr>
                        <td></td>
                      </tr>
                    </tbody>
                  </table>

                </div>

              </div>
            </div>

          </div>
        </div>

        

      </div>
    </section>

  </main>

  
<?php

include "footer.php";

?>