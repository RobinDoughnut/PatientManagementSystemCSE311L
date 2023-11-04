<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Edit Book</title>
</head>
<body>
    <div class="container my-5">
    <header class="d-flex justify-content-between my-4">
            <h1>Edit Patient</h1>
            <div>
            <a href="index.php" class="btn btn-primary">Back</a>
            </div>
        </header>
        <form action="process.php" method="post">
            <?php 
//             $con = mysqli_connect("localhost", "root", "", "patient_database");

// if (!$con) {
//     die("Connection Error: " . mysqli_connect_error());
// }

// if (isset($_GET['patient_ID'])) {
//     $id = $_GET['patient_ID'];
//     $sql = "SELECT patient_ID, patient_name, phone, email, address, age, gender, password FROM patient WHERE patient_ID = $id";
//     $result = $con->query($sql);
//     $row = $result->fetch_assoc();

//     if (!$row) {
//         echo "Patient not found";
//         exit;
//     }
// } else {
//     echo "Invalid request";
//     exit;
// }

            // if (isset($_GET['patient_ID'])) {
                $mysqli = mysqli_connect("localhost", "root", "", "patient_database");
    $query = "SELECT * FROM patient WHERE patient_ID=j123";
    $result = mysqli_query($mysqli, $query);

    if($result) {
        while($row = mysqli_fetch_assoc($result)) {
            echo 'Patient ID: ' . $row['patient_ID'] . '<br />';
            echo 'Address: ' . $row['phone'] . '<br>';
            echo 'Long: ' . $row['email'] . '<br>';
            echo 'Lat: ' . $row['address'] . '<br>';    
        }
    }
                // include("db.php");
    //             $id = $_GET['patient_ID'];
    //             $sql = "SELECT * FROM patient WHERE patient_ID=$id";
    //             $result = mysqli_query($conn,$sql);
    //             $row = mysqli_fetch_array($result);
    //             $stmt = $pdo->prepare("SELECT * FROM patient WHERE patient_ID=$id");
    // //you should never use *, just call each field name you are going to use

    // $stmt->execute(); // run the statement
    // $arr = $stmt->fetchAll(PDO::FETCH_ASSOC); // fetch the rows and put into associative array

    // print_r($arr); // print all array items, unformatted
    //             ?>
                     <div class="form-elemnt my-4">
                <input type="text" class="form-control" name="title" placeholder="Book Title:" value="<?php echo $row["patient_name"]; ?>">
            <!-- </div>
            <div class="form-elemnt my-4">
                <input type="text" class="form-control" name="author" placeholder="Author Name:" value="<?php echo $row["author"]; ?>">
            </div>
            <div class="form-elemnt my-4">
                <select name="type" id="" class="form-control">
                    <option value="">Select Book Type:</option>
                    <option value="Adventure" <?php if($row["type"]=="Adventure"){echo "selected";} ?>>Adventure</option>
                    <option value="Crime" <?php if($row["type"]=="Crime"){echo "selected";} ?>>Crime</option>
                    <option value="Fantasy" <?php if($row["type"]=="Fantasy"){echo "selected";} ?>>Fantasy</option>
                    <option value="Horror" <?php if($row["type"]=="Horror"){echo "selected";} ?>>Horror</option>
                </select>
            </div>
            <div class="form-element my-4">
                <textarea name="description" id="" class="form-control" placeholder="Book Description:"><?php echo $row["description"]; ?></textarea>
            </div>
            <input type="hidden" value="<?php echo $id; ?>" name="id">
            <div class="form-element my-4">
                <input type="submit" name="edit" value="Edit Book" class="btn btn-primary">
            </div> -->
                <?php
            // }else{
            //     echo "<h3>Book Does Not Exist</h3>";
            // }
            ?>
           
        </form>
        
        
    </div>
</body>
</html>