<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Home</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href=" {{ asset('template') }}/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link href="{{ asset('template') }}/https://fonts.googleapis.com/css2?family=Nunito+Sans&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="{{ asset('template') }}/https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Flaticon Font -->
    <link href="{{ asset('template') }}/lib/flaticon/font/flaticon.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="{{ asset('template') }}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="{{ asset('template') }}/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ asset('template') }}/css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid ">
        <div class="row py-3 px-lg-5">
            <div class="col-lg-4">
                <a href="" class="navbar-brand d-none d-lg-block">
                    <img src="{{ asset('template') }}/img/Logo.png" alt="Image" height="42" width="220">
                </a>
            </div>
            <div class="col-lg-8 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">

                    <!-- search  bar -->
                    <nav class="navbar navbar-light">
                        <div class="container-fluid">
                            <form class="d-flex">
                                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            </form>
                        </div>
                    </nav>
                    <div class="d-inline-flex flex-column text-center pr-3 border-right">
                        <span> <i class="large material-icons ">shopping_cart</i></span>
                    </div>
                    <div class="d-inline-flex flex-column text-center px-3 border-right">
                        <a href="daftar"> Daftar </a>
                    </div>
                    <div class="d-inline-flex flex-column text-center pl-3">
                        <a href="login"> Login </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-light navbar-dark py-3 py-lg-0 px-lg-5">
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                <div class="navbar-nav mr-auto py-0 ">
                    <a style="font-family: verdana;" href="/" class="nav-item nav-link active text-dark">Home</a>
                    <a style="font-family: Verdana;" href="#" class="nav-item nav-link text-dark">Celana</a>
                    <a style="font-family: verdana;" href="#" class="nav-item nav-link text-dark">Tas</a>
                    <a style="font-family: verdana;" href="detail" class="nav-item nav-link text-dark">Baju</a>
                    <a style="font-family: verdana;" href="#" class="nav-item nav-link text-dark">Sepatu</a>
                </div>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->


    <!-- Carousel Start -->
    <div class="container-fluid p-0 bg-light">
        <div id="header-carousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="{{ asset('template') }}/img/Pakaian 8.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 900px;">
                            <h1 class="display-3 text-white mb-3">Pilih Pakaian Favoritmu</h1>
                            <h5 class="text-white mb-3 d-none d-sm-block">Duo nonumy et dolor tempor no et. Diam sit diam sit diam erat</h5>
                            <a href="" class="btn btn-lg btn-secondary mt-3 mt-md-4 px-4">Pesan Sekarang</a>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="{{ asset('template') }}/img/Pakaian 7.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 900px;">
                            <h1 class="display-3 text-white mb-3">Pilih Pakaian Favoritmu</h1>
                            <h5 class="text-white mb-3 d-none d-sm-block">Duo nonumy et dolor tempor no et. Diam sit diam sit diam erat</h5>
                            <a href="" class="btn btn-lg btn-secondary mt-3 mt-md-4 px-4">Pesan Sekarang</a>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                <div class="btn btn-primary rounded" style="width: 45px; height: 45px;">
                    <span class="carousel-control-prev-icon mb-n2"></span>
                </div>
            </a>
            <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                <div class="btn btn-primary rounded" style="width: 45px; height: 45px;">
                    <span class="carousel-control-next-icon mb-n2"></span>
                </div>
            </a>
        </div>
    </div>
    <!-- Carousel End -->

    <!-- Pricing Plan Start -->
    <div class="container-fluid bg-light pt-5 pb-4">
        <div class="container py-5">
            <div class="d-flex flex-column text-center mb-5">
                <h1 class="display-4 m-0">Griya <span class="text-secondary">Fashion</span></h1>
                <br>
                <h4 class="text-dark mb-3">Griya Fashion memberikan jasa bagi penjual baju untuk mempermudah mereka dalam transaksi jual beli</h4>
            </div>
            <div class="row">
                <div class="col-lg-4 mb-4">
                    <div class="card border-0">
                        <div class="card-header position-relative border-0 p-0 mb-4">
                            <img class="card-img-top" src="{{ asset('template') }}/img/Pakaian 5.jpg" alt="">
                        </div>
                        <div class="card-footer border-0 p-0">
                            <a href="detail" class="btn btn-secondary btn-block p-3 text-light" style="border-radius: 0;">Pesan Sekarang</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-4">
                    <div class="card border-0">
                        <div class="card-header position-relative border-0 p-0 mb-4">
                            <img class="card-img-top" src="{{ asset('template') }}/img/Pakaian 4.jpg" alt="">
                        </div>
                        <div class="card-footer border-0 p-0">
                            <a href="detail" class="btn btn-secondary btn-block p-3 text-light" style="border-radius: 0;">Pesan Sekarang</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-4">
                    <div class="card border-0">
                        <div class="card-header position-relative border-0 p-0 mb-4">
                            <img class="card-img-top" src="{{ asset('template') }}/img/Pakaian 5.jpg" alt="">
                        </div>
                        <div class="card-footer border-0 p-0">
                            <a href="detail" class="btn btn-secondary btn-block p-3 text-light" style="border-radius: 0;">Pesan Sekarang</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-4">
                    <div class="card border-0">
                        <div class="card-header position-relative border-0 p-0 mb-4">
                            <img class="card-img-top" src="{{ asset('template') }}/img/Pakaian 4.jpg" alt="">
                        </div>
                        <div class="card-footer border-0 p-0">
                            <a href="detail" class="btn btn-secondary btn-block p-3 text-light" style="border-radius: 0;">Pesan Sekarang</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-4">
                    <div class="card border-0">
                        <div class="card-header position-relative border-0 p-0 mb-4">
                            <img class="card-img-top" src="{{ asset('template') }}/img/Pakaian 5.jpg" alt="">
                        </div>
                        <div class="card-footer border-0 p-0">
                            <a href="detail" class="btn btn-secondary btn-block p-3 text-light" style="border-radius: 0;">Pesan Sekarang</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-4">
                    <div class="card border-0">
                        <div class="card-header position-relative border-0 p-0 mb-4">
                            <img class="card-img-top" src="{{ asset('template') }}/img/Pakaian 4.jpg" alt="">
                        </div>
                        <div class="card-footer border-0 p-0">
                            <a href="detail" class="btn btn-secondary btn-block p-3 text-light" style="border-radius: 0;">Pesan Sekarang</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-4">
                    <div class="card border-0">
                        <div class="card-header position-relative border-0 p-0 mb-4">
                            <img class="card-img-top" src="{{ asset('template') }}/img/Pakaian 5.jpg" alt="">
                        </div>
                        <div class="card-footer border-0 p-0">
                            <a href="detail" class="btn btn-secondary btn-block p-3 text-light" style="border-radius: 0;">Pesan Sekarang</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-4">
                    <div class="card border-0">
                        <div class="card-header position-relative border-0 p-0 mb-4">
                            <img class="card-img-top" src="{{ asset('template') }}/img/Pakaian 4.jpg" alt="">
                        </div>
                        <div class="card-footer border-0 p-0">
                            <a href="detail" class="btn btn-secondary btn-block p-3 text-light" style="border-radius: 0;">Pesan Sekarang</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-4">
                    <div class="card border-0">
                        <div class="card-header position-relative border-0 p-0 mb-4">
                            <img class="card-img-top" src="{{ asset('template') }}/img/Pakaian 5.jpg" alt="">
                        </div>
                        <div class="card-footer border-0 p-0">
                            <a href="detail" class="btn btn-secondary btn-block p-3 text-light" style="border-radius: 0;">Pesan Sekarang</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Pricing Plan End -->

    <!-- Footer Start -->
    <div class="container-fluid bg-success text-white mt-5 py-5 px-sm-3 px-md-5">
        <div class="row pt-5">
            <div class="col-lg-4 col-md-12 mb-5">
                <h1 class="mb-3 display-5 text-capitalize text-white"><span class="text-light">Griya</span>Fashion</h1>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-md-4 mb-5">
                        <h5 class="text-light mb-4">LAYANAN</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Bantuan</a>
                            <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Metode Pembayaran</a>
                            <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Lacak Pemesanan</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <h5 class="text-light mb-4">PROFIL</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Tentang Griya Fashion</a>
                            <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Hubgungi Kami</a>
                            <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Karir</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <h5 class="text-light mb-4">TETAP TERHUBUNG</h5>
                        <div class="d-flex justify-content-start mt-4">
                            <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0" style="width: 36px; height: 36px;" href="#"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0" style="width: 36px; height: 36px;" href="#"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0" style="width: 36px; height: 36px;" href="#"><i class="fab fa-linkedin-in"></i></a>
                            <a class="btn btn-outline-light rounded-circle text-center mr-2 px-0" style="width: 36px; height: 36px;" href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-light back-to-top border-dark"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="{{ asset('template') }}/https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="{{ asset('template') }}/https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('template') }}/lib/easing/easing.min.js"></script>
    <script src="{{ asset('template') }}/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="{{ asset('template') }}/lib/tempusdominus/js/moment.min.js"></script>
    <script src="{{ asset('template') }}/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="{{ asset('template') }}/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="{{ asset('template') }}/mail/jqBootstrapValidation.min.js"></script>
    <script src="{{ asset('template') }}/mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="{{ asset('template') }}/js/main.js"></script>
</body>

</html>