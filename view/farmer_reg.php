<?php
include_once("../view/navigationBar.php");



$response = isset($_GET["response"]) ? $_GET["response"] : ""; // add user eke response eka link krnwa
$status = isset($_GET["res_status"]) ? $_GET["res_status"] : "";
$email = isset($_SESSION["otp"]) ? $_SESSION["otp"]["email"] : "";

?>



<!-- content -->
<div class="container-fluid">
     <!-- /////////////////// Top Banner ///////////////////// -->
     <div class="row ">
        <div class="col-md-12 text-center p-5" style="background-image:url('../image/1234.jpg');">
            <p class="text-uppercase p-2 m-auto text-white font-weight-lighter" style=" font-family: montserrat,serif; font-size: 7.5vw;">Farmer Registration</p>
            <p class="text-uppercase pt-3 pb-0 m-auto text-white font-weight-lighter ">
                <a class="text-decoration-none" style=" font-family: montserrat,serif; color:#db9200" href="home2.php">Home</a> &rarr; Registration
            </p>
        </div>
    </div>
    <!-- ///////////////////// Banner End /////////////////////// -->

    <!-- //////////////// Response Alert //////////////////// -->
    <div class="row mt-3">
        <div class="col-sm-8 mx-auto text-center">
            <?php if ($status == "1") { ?>
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h3 style="color: green;"><?php echo $response; ?></h3>
                </div>
            <?php } else if ($status == "0") { ?>
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h3 style="color: red;"><?php echo $response; ?></h3>
                </div>
            <?php } ?>
        </div>
    </div>
    <!-- //////////////// Response Alert End //////////////////// -->

    <div class="row mt-3 mb-3">

<!-- <h2 class"text-center"><?php echo $response; ?></h2>-->
<div class="col-sm-12">
    <div class="card">
        <div class="card-body">
            <div>
                <p class="text-danger">* required fields</p>
            </div>
            <form id="far_reg" enctype="multipart/form-data" method="POST" action="../controller/farmer_controller.php?type=addfarmer">
                <!-- User controller wala case eke thiyen type eka -->

                <!-- First Name and Last Name -->
                <div class="row mt-3">
                    <div class="col-sm-2 text-muted">
                        <label for="" class="control-label"><i class="fas fa-user"></i> First Name <i class="text-danger">*</i></label>
                    </div>
                    <div class="col-sm-4 text-muted">
                        <input type="text" name="fname" id="fname" class="form-control" required>
                    </div>
                    <div class="col-sm-2 text-muted">
                        <label for="" class="control-label"><i class="fas fa-user"></i> Last Name <i class="text-danger">*</i></label>
                    </div>
                    <div class="col-sm-4 text-muted">
                        <input type="text" name="lname" id="lname" class="form-control" required>
                    </div>
                </div>

                <!-- NIC and Contact Number -->
                <div class="row mt-3">
                    <div class="col-sm-2 text-muted">
                        <label for="" class="control-label"><i class="fas fa-id-card"></i> NIC <i class="text-danger">*</i></label>
                    </div>
                    <div class="col-sm-4 text-muted">
                        <input type="text" name="nic" id="nic" class="form-control" required>
                        <h5 id="user_response" class="text-danger"></h5>
                    </div>
                    <div class="col-sm-2 text-muted">
                        <label for="" class="control-label"><i class="fas fa-phone"></i> Contact Number <i class="text-danger">*</i></label>
                    </div>
                    <div class="col-sm-4 text-muted">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">0</span>
                            </div>
                            <input type="number" name="con" id="con" class="form-control" required>
                        </div>
                    </div>
                </div>

                <!-- Select Bank -->
                <div class="row mt-3">
                    <div class="col-sm-2 text-muted">
                        <label for="" class="control-label"><i class="fas fa-university"></i> Select Bank <i class="text-danger">*</i></label>
                        <select class="form-control" id="sel1">
                            <option>BOC</option>
                            <option>People's Bank</option>
                            <option>Sampath Bank</option>
                            <option>HNB</option>
                            <option>NDB</option>
                            <option>Commercial Bank</option>
                        </select>
                    </div>
                </div>

                <!-- Account Number and Gender -->
                <div class="row mt-3">
                    <div class="col-sm-2 text-muted">
                        <label for="" class="control-label"><i class="fas fa-money-check"></i> Account Number <i class="text-danger">*</i></label>
                    </div>
                    <div class="col-sm-4 text-muted">
                        <input type="number" name="acc" id="acc" class="form-control" required>
                    </div>
                    <div class="col-sm-2 text-muted">
                        <label for="" class="control-label"><i class="fas fa-venus-mars"></i> Gender <i class="text-danger">*</i></label>
                    </div>
                    <div class="col-sm-4 text-muted">
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" id="customRadio1" name="gender" class="custom-control-input" value="M">
                            <label class="custom-control-label" for="customRadio1">Male</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" id="customRadio2" name="gender" class="custom-control-input" value="F">
                            <label class="custom-control-label" for="customRadio2">Female</label>
                        </div>
                    </div>
                </div>

                <!-- Address -->
                <div class="row mt-3">
                    <div class="col-sm-2 text-muted">
                        <label for="" class="control-label"><i class="fas fa-map-marker-alt"></i> Address <i class="text-danger">*</i></label>
                    </div>
                    <div class="col-sm-3 text-muted pr-0 mt-1 mt-sm-0">
                        <input type="text" name="add1" id="add1" class="form-control" placeholder="Street Address 01" required>
                    </div>
                    <div class="col-sm-3 text-muted pr-0 mt-1 mt-sm-0">
                        <input type="text" name="add2" id="add2" class="form-control" placeholder="Street Address 02" required>
                    </div>
                    <div class="col-sm-3 text-muted pr-0 mt-1 mt-sm-0">
                        <input type="text" name="add3" id="add3" class="form-control" placeholder="City" required>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-sm-2 text-muted">
                        <label for="" class="control-label"><i class="fas fa-image"></i> User Image</label>
                    </div>
                    <div class="col-sm-4 text-muted">
                        <input type="file" name="uimg" id="uimg" class="form-control-file" onchange="readURL(this)">
                        <!-- Image Preview -->
                        <div>
                            <img id="prev_img" alt="">
                        </div>
                        <!-- Preview End -->
                    </div>
                </div>

                <div class="row mt-4">
                    <div class="col-sm-4 text-muted">
                        <button id="submit" type="submit" class="btn btn-block button text-white text-uppercase btn btn-primary">
                            <i class="fas fa-save"></i>&nbsp; &nbsp; Register
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

        <a id="loginBtn" href="lands.php" class="button btn border-0 text-white text-uppercase text-decoration-none btn btn-dark" style="color:#808080">
                    <i class="fas fa-sign-in"></i> </a>
    </div>
 <!--user_valid.js eka link krnwa meka </body> ekata kalin hari </head> ekata anthimata hari krnna ona -->

 <script src="../js/far_reg.js"></script>  <!--user_valid.js eka link krnwa meka </body> ekata kalin hari </head> ekata anthimata hari krnna ona -->



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
                    
                  <td> Edit </td>
                  <td> Delete </td>
                  <td> First Name </td>
                  <td> Last Name </td>
                  <td> Contact Number </td>
                  <td> NIC </td>
                  <td>  Account Number </td>
                  <td>  Gender  </td>
                  <td> Address 1  </td>
                  <td> Address 2 </td>
                  <td> Address 3 </td>
                  <td> Land Details </td>
                </tr>
                <tr>


                
                <?php 

                  while($row = mysqli_fetch_assoc($result))
                  {
                ?>

                
                  <td><a href="edit_farmer.php?id=<?php echo $row['far_nic']; ?>" class="btn btn-primary">Edit</a></td>
                  <td><a href="../controller/delete_farmer.php?far_nic=<?php echo $row['far_nic']; ?>" class="btn btn-danger">Delete</a></td>

                  


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







<?php



    include_once("../view/footer.php");
    ?>


