
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/icon" href="../image/logo/logo1.png">       <!--head eke icon eka tab ekata-->

    <title>AIMS</title>
    
    <link rel="stylesheet" href="../resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/DataTables/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="../resources/fontawesome/css/all.css">
    <link rel="stylesheet" href="../resources/fancybox/jquery.fancybox.css">
    <link rel="stylesheet" href="../resources/animate.css/animate.min.css">
    <link rel="stylesheet" href="../css/custom.css">

    <script src="../resources/jquery/jquery-3.6.0.min.js"></script>
    <script src="../resources/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../resources/DataTables/js/jquery.dataTables.min.js"></script>
    <script src="../resources/fancybox/jquery.fancybox.js"></script>
    <script src="../resources/sweetAlerts2/dist/sweetalert2.all.min.js"></script>

    <style>
        .sec-nav {
            min-height: 80px;
            height: auto;
            background-color: rgba(255, 255, 255, 0.8);
            margin: 0px;
            padding: 0px;
        }
    </style>
</head>







<body>
<div style="background-color: black; height:8px;"></div>    <!--nav bar ekata uda orange color bar eka-->





<!--  1st navigation bar eka ----------------------------------------------------------------------------------------------------------------------------->

                <!--1.navbar navbar-dark bg-dark(nav bar ekata color ek dnna)   
                    2.apata kamathi patak da gnna one nm  nav class="navbar navbar-light" style="background-color: #e3f2fd;"  me widiyta
                    3.btn btn-primary class eke"" athulata dnna ethakota button eke color eka change kra gnn puluwan (login button ekta kale)
                --->


    <nav class="navbar navbar-expand-md  justify-content-md-around navbar navbar-light"style="background-color:rgba(20,61,47)">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

       <!--screen eka size change karama menu button eken pahalata gnna widiaya  ona dewal add kara gnna-->
        <div class="collapse navbar-collapse order-1 order-md-0" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item mr-4">
                    <a href="../view/home.php" class="text-decoration-none" style="color:white">Home</a>
                </li>
                <li class="nav-item mr-4">
                    <a href="../view/registration.php" class="text-decoration-none" style="color:white">Registration New User</a>
                </li>
                <li class="nav-item mr-4">
                    <a href="../view/user_profile.php" class="text-decoration-none" style="color:white">My Profile</a>
                </li>
                <li class="nav-item mr-4">
                    <a href="#contact-footer" class="text-decoration-none" style= "color:white">Contact Us</a>
                </li>
                <li class="nav-item mr-4">
                    <a href="https://doa.gov.lk/" class="text-decoration-none" style="color:white">Agriculture Department</a>
                </li>
                
            </ul>
        </div>
 <!--hii user kiyana ekaii login button ekaii-->
        <div>
            <span class="pl-2" style="color:white;">
            <a id="logoutBtn" href="../controller/login_controller.php?type=logout" class="button btn border-0 text-white text-uppercase text-decoration-none btn btn-primary" style="color:#808080">

            <i class="fas fa-sign-out"></i> Logout </a>
                <?php if (isset($_SESSION["user"])) { ?>

                    <a id="logoutBtn" href="javascript:void(0);" onclick="confirmLogout()" class="button btn border-0 text-white text-uppercase text-decoration-none btn btn-primary" style="color:#808080">
    <i class="fas fa-sign-out"></i> Logout
</a>


                <?php } else { ?>

                <?php } ?>
            </span>&nbsp;&nbsp;
        </div>

    </nav>













    <!-- /////////////////////////////////// 2nd Navbar ///////////////////////////////////// -->

        <!-- 1. sticky-top navbar kiynne eka hide wenne na top eke thiyenwa contet eka witharai scroll wenne.
        

         -->

    <nav id="sec-nav" class="navbar sec-nav sticky-top navbar-expand-sm justify-content-center">

        <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button> -->

        <div class="mid-logo mr-auto">
            <div class="navbar-brand">
                <img src="../image/NewLogo.png" width="100px" height="100px" margin-left="5px"class="align-top" alt="logo">
            </div>
        </div>

        <ul class="navbar-nav text-uppercase font-weight-bolder">
            <li class="nav-item">
                <a class="nav-link navmenu" href="../view/home2.php" style="color:rgba(11, 87, 4)"> Admin Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link navmenu" href="../view/farmer_reg.php"style="color:rgba(11, 87, 4)">Add Farmer Details</a>
            </li>
            <li class="nav-item">
                <a class="nav-link navmenu" href="../view/view_farmer.php"style="color:rgba(11, 87, 4)">View Farmer Details</a>
            </li>
            <li class="nav-item">
                <a class="nav-link navmenu" href="../view/addnews.php"style="color:rgba(11, 87, 4)">Manage News</a>
            </li>
            <li class="nav-item">
                <a class="nav-link navmenu" href="../a/cal.php"style="color:rgba(11, 87, 4)">Fertilizer Details</a>
            </li>
        </ul>
    </nav>

    <!--body html tag close krnne na-->