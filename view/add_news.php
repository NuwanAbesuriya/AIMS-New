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
            <p class="text-uppercase p-2 m-auto text-white font-weight-lighter" style=" font-family: montserrat,serif; font-size: 7.5vw;">Manage News</p>
            <p class="text-uppercase pt-3 pb-0 m-auto text-white font-weight-lighter ">
                <a class="text-decoration-none" style=" font-family: montserrat,serif; color:#db9200" href="home2.php">Home</a> &rarr; Manage News
            </p>
        </div>
    </div>
    <!-- ///////////////////// Banner End /////////////////////// -->

  
    <div class="row mt-3 mb-3">

    <h2 class"text-center"><?php echo $response; ?></h2>
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div>
                        <p class="text-danger">* required fields </p>
                    </div>
                    <form id="addnewsform" enctype="multipart/form-data" method="POST" action="../controller/news_controller.php?type=addnews"><!--user controller wala case eke thiyen type eka-->
                   
                        <div class="row mt-3">
                            <div class="col-sm-2 text-muted">
                                <label for="" class="control-label">Title <i class="text-danger">*</i></label>
                            </div>
                            <div class="col-sm-8 text-muted">
                                <input type="text" name="title" id="title" class="form-control" required>
                            </div>
                            
              
                        </div>
                       
                        <!--address-->
                        <div class="row mt-3">
                        <div class="col-sm-2 text-muted">
                                <label for="" class="control-label">Description <i class="text-danger">*</i></label>
                            </div>
                            <div class="col-md-8 w-100 p-3 text-muted">
                                <input type="text" name="des" id="des"  class="form-control1" required>
                            </div>
                            <div class="form-floating">
  <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
  <label for="floatingTextarea2">Comments</label>
</div>
                        </div>
                                 <style>
                                .form-control1 {
                                    height: 150px; /* Adjust the height value as needed */
                                    width: 1000px;
                                    color:aqua;
                                    background-color: #db9200;
                            

                                }
                                </style>

                        <div class="row mt-3">
                            <div class="col-sm-2 text-muted">
                                <label for="" class="control-label">User Image</label>
                            </div>
                            <div class="col-sm-4 text-muted">
                                <input type="file" name="uimg" id="uimg" class="form-control-file" onchange="readURL(this);">
                                <!-- Image Preview -->
                                <div>
                                    <img id="prev_img" alt="">
                                </div>
                                <!-- Preview End -->
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-sm-4 text-muted">
                                <button id="submit" type="submit" class="btn btn-block button text-white text-uppercase btn btn-primary"><i class="fad fa-save"></i>&nbsp; &nbsp; Add</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
  <!--user_valid.js eka link krnwa meka </body> ekata kalin hari </head> ekata anthimata hari krnna ona mekata jsavascrip ona na  -->




                                                                            <!--footer -->                                                  

                                                                            

<?php
    include_once("../view/footer.php");
    ?>