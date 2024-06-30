<?php
include_once("connections/connection.php");
$con = connection();

if(isset($_POST['register'])){
    $first_name = $_POST['first_name'];
    $middle_name = $_POST['middle_name'];
    $last_name = $_POST['last_name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $repeat_password = $_POST['repeat_password'];
    $gender = $_POST['gender'];

    // SQL code to check if the data is already in the database or not 
  $check = "SELECT * FROM students WHERE first_name = '$first_name' AND middle_name = '$middle_name' AND last_name = '$last_name' OR password = '$password' AND email = '$email' ";
  $checks = $con->query($check) or die ($con->error);
  $rowcheck = $checks->fetch_assoc();
  $totalcheck = $checks -> num_rows;

  if($totalcheck > 0){
    echo "<script> alert('Data already exist in database');  </script>"; 
}else{
    // Validation for repeat password 
    if($password != $repeat_password){
        echo "<script> alert('Password and Retyped password not match!');  </script>"; 
      }else{
        $insert = "INSERT INTO `students` (`first_name`,`middle_name`,`last_name`,`email`,`password`, `gender`) VALUES ('$first_name', '$middle_name', '$last_name', '$email' , '$password' , '$gender')";

        $con->query($insert) or die ($con->error);
        header ("Location:index.php");
      }
    }
}


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Information System</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome/css/all.css">
    <link rel="stylesheet" href="fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="fontawesome/css/regular.min.css">
    <link rel="stylesheet" href="fontawesome/css/solid.min.css">
    <link rel="stylesheet" href="fontawesome/css/svg-with-js.css">
    <link rel="stylesheet" href="responsive/responsive.css">
</head>
<body>

<section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                <form class="mx-1 mx-md-4" method="POST">

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example1c" class="form-control" name="first_name" required/>
                      <label class="form-label" for="form3Example1c">First Name</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example1c" class="form-control"  name="middle_name" required/>
                      <label class="form-label" for="form3Example1c">Middle Name</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example1c" class="form-control"   name="last_name" required/>
                      <label class="form-label" for="form3Example1c">Last Name</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                      <select type="checkbox" id="gender" name="gender" class="form-control" required>
                      <option></option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                      </select>
                      <label class="form-label" for="form3Example1c">Gender</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                      <input type="email" id="form3Example3c" class="form-control" name="email" required/>
                      <label class="form-label" for="form3Example3c">Your Email</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                      <input type="password" id="form3Example4c" class="form-control" name="password" required/>
                      <label class="form-label" for="form3Example4c">Password</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div data-mdb-input-init class="form-outline flex-fill mb-0">
                      <input type="password" id="form3Example4cd" class="form-control" name="repeat_password" required/>
                      <label class="form-label" for="form3Example4cd">Repeat your password</label>
                    </div>
                  </div>

                  <div class="form-check d-flex justify-content-center mb-5">
                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                    <label class="form-check-label" for="form2Example3">
                      I agree all statements in <a href="#!">Terms of service</a>
                    </label>
                  </div>
                  <style>
                  .button-container{
                      display:flex;
                      justify-content: space-between;
                      }
                    }
                  </style>
                  <div class="button-container">
                  <button  type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-lg" name="register">Register</button>
                  <button id="exitButton" data-mdb-button-init data-mdb-ripple-init class="btn btn-info btn-lg" name="exit">Go back</button>
                  <button id="resetButton" data-mdb-button-init data-mdb-ripple-init class="btn btn-warning btn-lg" name="reset">Reset all</button>
                  </div>

                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="img/emcse.png"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

     
<script src="jqury/jquery.min.js"></script>
      <script src="popper/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="jqury/jquery.min.js"></script>
    <script src="fontawesome/js/all.js"></script>
    <script src="fontawesome/js/fontawesome.min.js"></script>
    <script src="fontawesome/js/all.min.js"></script>
    <script src="fontawesome/js/brands.js"></script>
    <script src="fontawesome/js/brands.min.js"></script>
    
    <script src="js/carosel.js"></script>
    <script src="js/modal.js"></script>
    <script src="js/script.js"></script>
     
      <script>
          const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
  const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))
      </script>
      <!-- ///for tooltip -->
      <script>const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
        const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
      </script>
      <!-- ///for button exit -->
    <script>
       const exitButton = document.getElementById('exitButton');
        exitButton.addEventListener('click', () => {
        window.location.href = 'index.php';
        });
    </script>
    <!-- ///for button reset all -->
    <script>
       document.getElementById('resetButton').addEventListener('click', function() {
  document.querySelectorAll('input, select').forEach(function(element) {
    switch (element.type) {
      case 'text':
      case 'gender':
      case 'email':
      case 'password':
        element.value = '';
        break;
      case 'checkbox':
        element.checked = false;
        break;
      case 'select-one':
        element.selectedIndex = 0;
        break;
    }
  });
})
    </script>
  </body>
  </html>