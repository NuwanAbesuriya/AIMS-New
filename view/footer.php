
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<!-- footer -->
<!-- Footer -->
<div class="container-fluid mt-4 pb-2" style="background-color: #262626; min-height: 200px; height: auto;">
    <div class="row">
        <div class="col-sm-6 col-lg-3 mt-2">
            <div class="row">
                <div class="col-12">
                    <h2 class="text-white font-weight-lighter"><i class="fas fa-phone"></i> Contact Numbers</h2>
                    <div class="text-white font-weight-lighter"><i class="fas fa-check"></i> Hotline - 0473489268</div>
                    <div class="text-white font-weight-lighter"><i class="fas fa-check"></i> Senior DO Mobile - 0776322378</div>
                    <div class="text-white font-weight-lighter"><i class="fas fa-check"></i> DO - 0701083402</div>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-lg-3 mt-2">
            <div class="row">
                <div class="col-12">
                    <h2 class="text-white font-weight-lighter"><i class="fas fa-map-marker-alt"></i> Address</h2>
                    <div class="text-white font-weight-lighter">Agrarian Service Center,<br>Meegahajandura,<br>Hambantota</div>
                </div>
            </div>
        </div>

        <div class="col-6 col-lg-3 mt-2">
            <div class="row">
                <div class="col-12">
                    <h2 class="text-white font-weight-lighter"><i class="fas fa-map"></i> Location</h2>
                    <a class="text-white font-weight-lighter" href="https://maps.app.goo.gl/mDH5JPNNYsL6WvEF8"><u>Click here to go map</u></a>
                </div>
            </div>
        </div>

        <div class="col-6 col-lg-3 mt-2">
            <div class="row">
                <div class="col-12">
                    <h2 class="text-white font-weight-lighter"><i class="fas fa-location-arrow"></i> Google Map on</h2>
                    <div class="col-md-11 text-center p-5" style="background-image: url('../image/map.jpg');">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="w-100" style="height: 1px; background-color: white;"></div>

    <!-- Copyright row -->
    <div class="container-fluid" style="background-color: #262626; min-height: 70px; height: auto;">
        <div class="row pt-3 pb-2">
            <div class="col-md-6">
                <p class="text-white text-uppercase font-weight-lighter">
                    <br>Designed By GROUP 4 IT/IS Intake 39<br>
                    Copyrights &copy;
                    <script>
                        document.write(new Date().getFullYear());
                    </script>
                    All rights reserved
                </p>
            </div>
        </div>
    </div>

    <div style="height: 8px; background-color: #db9200;"></div>

    <script>
        $(document).ready(function() {
            $("#logoutBtn").on("click", function(e) {
                e.preventDefault();
                let url = $(this).attr("href");
                Swal.fire({
                    title: 'Are You Sure You Want To Logout ?',
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#f00",
                    cancelButtonColor: "#3085d6",
                    confirmButtonText: "Yes Logout"
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location = url;
                    }
                });
            });
        });
    </script>
</div>
</body>

</html>