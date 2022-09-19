<?php
require_once('../check_login.php');
?>
<?php
include"../config.php";
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if(isset($_POST['submit']))
    {
        $sql = "INSERT INTO vehicals (vtype,vno,seats)
            VALUES ('".$_POST['vtype']."','".$_POST['vno']."','".$_POST['seats']."')";
            // use exec() because no results are returned
            $conn->exec($sql);
             $_SESSION['success']=' Record Added Successfully.....';
            // echo "New record created successfully";
            // $_SESSION['reply'] = "Added Successfully";
        header("location:../vehical_details.php");
    }
    if(isset($_POST['update']))
         
    {
        $sql = "UPDATE vehicals SET vtype='".$_POST['vtype']."',
        vno='".$_POST['vno']."',seats='".$_POST['seats']."'
    
     WHERE id='".$_GET['edit_id']."'";

    // Prepare statement
    $stmt = $conn->prepare($sql);

    // execute the query
    $stmt->execute();
    // echo "<pre>";print_r($stmt);exit;
    $_SESSION['success']=' Record Updated Successfully......';
     // $_SESSION['reply'] = "Updated Successfully";
        header("location:../vehical_details.php");
    }
    if(isset($_GET['id']))
    {
        $sql = "DELETE FROM vehicals WHERE id='".$_GET['id']."'";

            // use exec() because no results are returned
            $conn->exec($sql);
            $_SESSION['success']=' Record Successfully Deleted';
            // echo "Record deleted successfully";
            //  $_SESSION['reply'] = "Record deleted successfully";
        header("location:../vehical_details.php");
    }
}
catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }


    

$conn = null;
?>