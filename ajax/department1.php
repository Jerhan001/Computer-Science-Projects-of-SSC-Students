<?php   

include_once("../connections/connection.php");

$con = connection();

$department = isset($_POST['department']) ? $_POST['departmen'] : 0;
$courseId = isset($_POST['course']) ? $_POST['course'] :0 ;
$command = isset($_POST['get']) ? $_POST['get'] : "";

switch ($command) {
    case "department":
            $statement = "SELECT * FROM department WHERE department_of = 'student'  ORDER BY department_name ASC ";
            $students1 = $con->query($statement) or die ($con->error);
        
            while ($row1 = $students1->fetch_assoc()){
                 echo $result1 = "<option value = ". $row1['department_id'] .">" . $row1['department_name'] . "</option>"; 
                 
                }
         
        break;
    case "course":
        $result1 = "<option> Select Course</option>";
        $statement = "SELECT * FROM course WHERE department_id =" . $departmentId;
        $students1 = $con->query($statement) or die ($con->error); 
        
        while ($row1 = mysqli_fetch_array($students1)){
          $result1 = "<option value = ". $row1['course_id'] .">" . $row1['course_name'] . "</option>"; 
        }
        echo $result1;
break;

     

}
?>