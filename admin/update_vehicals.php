<?php
require_once('check_login.php');
?>
<?php include "header.php" ?>

<?php include "sidebar.php" ?>
<?php
include('config.php');
try {
  $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $stmt = $conn->prepare("select * from vehicals where id='" . $_GET['id'] . "'");
    $stmt->execute();

    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    $id = $row['id'];
    $vtype = $row['vtype'];
    $vno = $row['vno'];
    $seats = $row['seats'];
  }
} catch (PDOException $e) {
  echo $sql . "<br>" . $e->getMessage();
  $_SESSION['reply'] = "Added Successfully";
  header("location:../vehicals.php");
}

$conn = null;
?>


<div class="page-wrapper">

  <div class="row page-titles">
    <div class="col-md-5 align-self-center">
      <h3 class="text-primary">Update Vehicals Details</h3>
    </div>
    <div class="col-md-7 align-self-center">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="javascript:void(0)">Update Vehicals</a></li>
        <li class="breadcrumb-item active">Dashboard</li>
      </ol>
    </div>
  </div>


  <div class="container-fluid">

    <div class="row">
      <div class="col-lg-12">
        <div class="card card-outline-primary">

          <div class="card-body">
            <form action="operations/vehicals.php?edit_id=<?php echo $id; ?>" method="post">


              <div class="form-body">
                <h3 class="card-title m-t-15">Vehical Info</h3>
                <hr>
                <div class="row p-t-20">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="control-label">Vehical Type </label>
                      <input type="text" class="form-control" value="<?php echo $vtype; ?>" name="vtype" placeholder="Enter vehical type"  required>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="control-label">Vehical No</label>
                      <input type="text" class="form-control" value="<?php echo $vno; ?>" name="vno" placeholder="Enter vehical no"  required>
                    </div>
                  </div>

                  <div class="col-md-6">
                    <div class="form-group">
                      <label class="control-label">Seats</label>
                      <input type="number" class="form-control" name="seats" value="<?php echo $seats; ?>" placeholder="Enter no of seats" required>
                    </div>
                  </div>

                </div>



              </div>
              <div class="form-actions">

                <button type="submit" class="btn btn-success" name="update"> <i class="fa fa-check"></i> Update</button>
                <a href="vehical_details.php"><button type="button" class="btn btn-inverse">Cancel</button></a>
              </div>
            </form>
          </div>
        </div>

      </div>
    </div>
  </div>


  <?php include "footer.php" ?>



  <?php if (!empty($_SESSION['success'])) {  ?>
    <div class="popup popup--icon -success js_success-popup popup--visible">
      <div class="popup__background"></div>
      <div class="popup__content">
        <h3 class="popup__content__title">
          Success
          </h1>
          <p><?php echo $_SESSION['success']; ?></p>
          <p>
            <button class="button button--success" data-for="js_success-popup">Close</button>
          </p>
      </div>
    </div>
  <?php unset($_SESSION["success"]);
  } ?>

  <script>
    var addButtonTrigger = function addButtonTrigger(el) {
      el.addEventListener('click', function() {
        var popupEl = document.querySelector('.' + el.dataset.for);
        popupEl.classList.toggle('popup--visible');
      });
    };

    Array.from(document.querySelectorAll('button[data-for]')).
    forEach(addButtonTrigger);
  </script>