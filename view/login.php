<?php
include_once("../view/navigationBar1.php");

$response = isset($_GET["response"]) ? $_GET["response"] : "";
$status = isset($_GET["res_status"]) ? $_GET["res_status"] : "";
$email = isset($_SESSION["otp"]) ? $_SESSION["otp"]["email"] : "";
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <title>login</title>
    <link rel="stylesheet" href="../css/allcss.css">
</head>
<!-- content -->
<div class="container-fluid">

    <!-- /////////////////// Top Banner ///////////////////// -->
    <div class="row ">
        <div class="col-md-12 text-center p-5" style="background-image:url('../image/1234.jpg');">
            <p class="text-uppercase p-2 m-auto text-white font-weight-lighter" style=" font-family: montserrat,serif; font-size: 7.5vw;">Login</p>
            <p class="text-uppercase pt-3 pb-0 m-auto text-white font-weight-lighter ">
                <a class="text-decoration-none" style=" font-family: montserrat,serif; color:#db9200" href="home.php">Home</a> &rarr; Login
            </p>
        </div>
    </div>
    <!-- ///////////////////// Banner End /////////////////////// -->



    <?php if ($status == "0" && !empty($response)) { ?>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
        <h3 style="color: red;"><?php echo $response; ?></h3>
    </div>
<?php } ?>

   
 

<!-- content end -->
<div class="row mt-3">
        <!-- login -->
        <div class="col-sm-6 text-muted p-5">
        <!DOCTYPE html>
<html lang="en">
<head>
  
    <link rel="stylesheet" href="../css/allcss.css">
</head>
<body>
    <!-- Your HTML content here -->
    <!-- Your HTML content here -->
    <form id="userlogin" enctype="multipart/form-data" method="POST" action="../controller/login_controller.php">
        <label class="control-label">Service Id <span class="text-danger"> *</span></label>
        <input type="text" class="form-control" name="id1" id="id1" placeholder="Service Id" required>
        <br>
        <label class="control-label">Password <span class="text-danger"> *</span></label>
        <div class="input-group">
            <input type="password" id="pw1" class="form-control" name="pw1" placeholder="Password" required>
            <div style="cursor: pointer;" class="input-group-append" id="pw_append">
                <span class="input-group-text">
                    <i id="pw_icon" class="fas fa-eye"></i>
                </span>
            </div>
        </div>
        <button class="btn button text-white text-uppercase mt-3 btn btn-primary">Login</button>&nbsp; | &nbsp;
        <a href="#" class="text-uppercase text-decoration-none" data-toggle="modal" data-target="#lostPasswordModal">Lost My Password</a><br><br>
    </form>
    

                                                    <!-- to eye click and show password -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- Include jQuery library if not already included -->
    <script>
$(document).ready(function() {
    $("#pw_icon").click(function() {
        var passwordInput = $("#pw1");
        if (passwordInput.attr("type") === "password") {
            passwordInput.attr("type", "text");
        } else {
            passwordInput.attr("type", "password");
        }
    });
});
</script>
                                                        <!-- to eye click and show password -->

  

   <!-- Lost Password Modal -->
    <div class="modal fade" id="lostPasswordModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Lost Password</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Enter your email address to reset your password:</p>
                    <form id="resetPasswordForm" action="../controller/send-token-email.php" method="POST">
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Reset Password</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
               
        </div>
        <!-- login end -->

      
    </div>



<?php
    include_once("../view/footer.php");
    ?>