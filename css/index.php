<?php 

  $con = mysqli_connect("localhost","root","","patient_database");

  if(!$con){
    die("Connection Error");

  }
  $sql = "SELECT patient_ID, patient_name, phone, email, address, age, gender, password FROM patient";
  
  $result = $con->query($sql);
  

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fetch Data from Database and php</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body class="bg-dark">
    <div class="container">
      <div class="row mt-5">
        <div class="col">
          <div class="card mt-5">
            <div class="card-header">
              <h2 class="display-6 text-center">Fetch Data From Database in Php</h2>
            </div>
            <div class="card-body">
              <table class="table table-bordered text-center">
                <tr class="bg-dark text-white">
                <th> Patient_ID </th> 
                <th> Name </th> 
                <th> Phone </th> 
               <th> Email </th> 
               <th> Address </th> 
               <th> Age </th> 
               <th> Gender </th> 
              <th> Password </th> 
              <th> Edit </th>         
              <th> Delete </th> 
                </tr>
                <tr>
                <?php 

                  while($row = $result->fetch_assoc())
                  {
                ?>
                      <tr> <td><?php echo $row['patient_ID']; ?></td> 
                       <td><?php echo $row['patient_name']; ?></td> 
                       <td><?php echo $row['phone']; ?></td> 
                       <td><?php echo $row['email']; ?></td> 
                       <td><?php echo $row['address']; ?></td> 
                       <td><?php echo $row['age']; ?></td> 
                       <td><?php echo $row['gender']; ?></td> 
                       <td><?php echo $row['password']; ?></td> 
                       <td><a href="edit2.php?patient_ID=<?php echo $row['patient_ID']; ?>" class = "btn btn-primary">Edit</a></td> 
                       <td><a href="delete.php?patient_ID=<?php echo $row['patient_ID']; ?>" class="btn btn-danger">Delete</a></td>
                </tr>
                <?php    
                  }
                
                ?>
                
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>


