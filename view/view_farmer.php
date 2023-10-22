<?php
include_once("../view/navigationBar.php");



$response = isset($_GET["response"]) ? $_GET["response"] : ""; // add user eke response eka link krnwa
$status = isset($_GET["res_status"]) ? $_GET["res_status"] : "";
$email = isset($_SESSION["otp"]) ? $_SESSION["otp"]["email"] : "";
?>





<?php 
require_once('../common/db.php');
$query = "select * from far_reg";
$result = mysqli_query($con,$query);


require_once '../common/db.php';
require_once '../model/function.php';

$result = display_data();

?>




<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Funda Of Web IT</title>
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card mt-4">
                    <div class="card-header">
                        
                        <h4 style="position: center; color:crimson" >Search by Farmer's ID or Farmer's NIC</h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-7">

                                <form action="" method="GET">
                                    <div class="input-group mb-3">
                                        <input type="text" name="search" required value="<?php if(isset($_GET['search'])){echo $_GET['search']; } ?>" class="form-control" placeholder="Search data">
                                        <button type="submit" class="btn btn-primary">Search</button>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <div class="card mt-4">
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                        
                                        <td> First Name </td>
                                        <td> Last Name </td>

                                        <td> Contact Number </td>
                                        <td> NIC </td>
                                        <td>  Account Number </td>
                                     
                                        <td> Address 1 </td>
                                        <td> Address 2 </td>
                                        <td> Address 3 </td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                    $con = mysqli_connect("localhost","root","","aims");

                                    if(isset($_GET['search']))
                                    {
                                        $filtervalues = $_GET['search'];
                                        $query = "SELECT * FROM far_reg WHERE CONCAT(far_nic) LIKE '%$filtervalues%' ";
                                        $query_run = mysqli_query($con, $query);

                                        if(mysqli_num_rows($query_run) > 0)
                                        {
                                            foreach($query_run as $items)
                                            {
                                                ?>
                                                <tr>
                                              
                                                    <td><?= $items['far_fname']; ?></td>
                                                    <td><?= $items['far_lname']; ?></td>
                                                    <td><?= $items['far_con']; ?></td>
                                                    <td><?= $items['far_nic']; ?></td>
                                                    <td><?= $items['far_acc']; ?></td>
                                                  
                                                    <td><?= $items['far_add1']; ?></td>
                                                    <td><?= $items['far_add2']; ?></td>
                                                    <td><?= $items['far_add3']; ?></td>
                                                </tr>
                                                <?php
                                            }
                                        }
                                        else
                                        {
                                            ?>
                                                <tr>
                                                    <td >No Record Found</td>
                                                </tr>
                                            <?php
                                        }
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>

<?php 
require_once('../common/db.php');
$query = "select * from far_reg";
$result = mysqli_query($con,$query);


require_once '../common/db.php';
require_once '../model/function.php';

$result = display_data();

?>


<body class="bg-dark col-sm-12">
<div class="row mt-3 mb-3">
    <div class="container col-sm-12 ">
      <div class="row mt-10">
        <div class="col">
          <div class="card mt-5">  <!-- form eke idn tabale ekata thiyena thanata thina usa wens krnna-->
            <div class=" col-sm-12">
              <h2 class="display-6 text-center">Farmer's Details</h2>
            </div>
                     <style>
                    .table-responsive {
                        overflow-x: auto;
                    }
                    .table {
                        width: 100%;
                        max-width: 100%;
                    }
                    </style>

                    <div class="table-responsive">
                    <table class="table table-bordered text-center">
                        <!-- Your table content goes here -->

                        <div class="card-body">
              <table class="table table-bordered text-center " width=100%>
                <tr class="bg-dark text-white">
               
                  <td> First Name </td>
                  <td> Last Name </td>
                 
                  <td> Contact Number </td>
                  <td> NIC </td>
                  <td>  Account Number </td>
                
                  <td> Gender  </td>
                  <td> Address 1 </td>
                  <td> Address 2 </td>
                  <td> Address 3 </td>
                 

                </tr>
                <tr>
                <?php 
                

                  while($row = mysqli_fetch_assoc($result))
                  {
                ?>

                 
                  <td><?php echo $row['far_fname']; ?></td>
                  <td><?php echo $row['far_lname']; ?></td>
                  
                  <td><?php echo $row['far_con']; ?></td>
                  <td><?php echo $row['far_nic']; ?></td>
                  <td><?php echo $row['far_acc']; ?></td>
                  <td><?php echo $row['far_gender']; ?></td>
                  <td><?php echo $row['far_add1']; ?></td>
                  <td><?php echo $row['far_add2']; ?></td>
                  <td><?php echo $row['far_add3']; ?></td>
                  
                  
                 

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
    </div>
</div>
</body>
</html>



<?php



    include_once("../view/footer.php");
    ?>