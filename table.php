<?php
include_once("connections/connection.php");
$con = connection();

if(!empty($_SESSION ["admin_id"])){
    $id = $_SESSION ["admin_id"];
    $select2 = "SELECT * FROM students WHERE id = '$id' ";
    $checks2 = $con->query($select2) or die ($con->error);
    $rowcheck2 = $checks2->fetch_assoc();
    $totalcheck2 = $checks2 -> num_rows;
}else{
    header('Location:index.php');
}

$select = "SELECT * FROM students ORDER BY first_name ASC";
$checks = $con->query($select) or die ($con->error);
$rowcheck = $checks->fetch_assoc();
$totalcheck = $checks -> num_rows;
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
<div class="container">
    <h5 style="text-align:center;">Welcome to Your Account <?php echo $rowcheck2['first_name']; ?></h5>
    <h1 class="text-center mt-5">Students Information</h1>
    <div class="mb-3">
    <input type="text" class="form-control" id="searchInput" placeholder="Search by name">
    </div>
    <button data-mdb-button-init data-mdb-ripple-init class="btn btn-secondary btn-lg" id="exitButton">logout</button>
    <table class="table table-bordered">
    <thead>
        <tr>
        <th scope="col">#</th>
        <th scope="col">First Name</th>
        <th scope="col">Middle Name</th>
        <th scope="col">Last Name</th>
        <th scope="col">Email</th>
        <th scope="col">Gender</th>
        <th scope="col">Edit</th>
        <th scope="col">Delete</th>
        </tr>
    </thead>
    <tbody>
<?php if($totalcheck > 0){
    do{
  ?>
        <tr>
        <th scope="row"><?php echo $rowcheck['id']; ?></th>
        <td><?php echo $rowcheck['first_name']; ?></td>
        <td><?php echo $rowcheck['middle_name']; ?></td>
        <td><?php echo $rowcheck['last_name']; ?></td>
        <td><?php echo $rowcheck['email']; ?></td>
        <td><?php echo $rowcheck['gender']; ?></td>

        <td><a class="btn btn-warning" href="edit.php?id=<?php echo $rowcheck['id']; ?>" ><i class="fas fa-edit"></i></a></td>
        <td>
        <?php echo "<a  class='btn btn-danger' onClick =\" javascript:return confirm('Are you sure to delete this record?');\" href='delete.php?delete={$rowcheck['id']} ' style='font-size: 12px ;'><i class=' fas fa-trash'></i></a>"; ?>
    </td>
      
        </tr>

<?php }while($rowcheck = $checks->fetch_assoc());

    }?>
    </tbody>
</table>
</div>


    
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
        
        <!-- ///for search bar-->
        <script>
    document.addEventListener("DOMContentLoaded", function () {
        const searchInput = document.getElementById("searchInput");
        const tableRows = document.querySelectorAll("tbody tr");

        searchInput.addEventListener("input", function () {
            const query = searchInput.value.toLowerCase();

            tableRows.forEach((row) => {
                const nameColumn = row.querySelector("td:nth-child(2)"); // Assuming first name is in the second column
                const name = nameColumn.textContent.toLowerCase();

                if (name.includes(query)) {
                    row.style.display = "table-row";
                } else {
                    row.style.display = "none";
                }
            });
        });
    });
    <!-- ///for button exit-->
    const exitButton = document.getElementById('exitButton');
exitButton.addEventListener('click', () => {
    window.location.href = 'index.php';
});
</script>
  </body>
  </html>