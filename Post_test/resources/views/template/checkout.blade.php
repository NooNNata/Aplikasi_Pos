<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Checkout Dong</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="{{ asset('template') }}/img/favicon.ico" rel="icon">

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
            <div class="collapse navbar-collapse justify-content-between px-3 " id="navbarCollapse">
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


    <!-- Content-->
    <div class="container-fluid bg-light">
        <div class="container py-4">
            <div class="row">
                <div class="card col-lg-8 mb-4 h-100 py-1 shadow-sm">
                    <div class="p-3">

                        <div class="card mb-3 p-2" style="max-width: 800px;">
                            <h5 class="card-title">Pesanan</h5>
                            <div class="row g-0">
                                <div class="col-md-4">
                                    <img src="{{ asset('template') }}/img/Pakaian 2.jpg" class="img-fluid rounded-start" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">Hooligans Harrington Jacket Harry</h5>
                                        <p class="card-text"><small class="text-muted">Hooligans Jacket Harrington ini menggunakan bahan Polyester (Taslan)
                                                Material ringan, tidak terlalu tebal dan cocok digunakan dalam aktifitas harian.</small></p>
                                        <p class="card-text">Kuantitas : 1</p>
                                        <p class="card-text text-success font-weight-bold">Rp 52.900</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <br>

                        <p style="font-size:larger;" class="font-weight-bold">Informasi Pengiriman</p>
                        <div class="row mb-2">
                            <div class="col">
                                <label for="exampleFormControlInput1" class="form-label">Nama Depan</label>
                                <input type="text" class="form-control" aria-label="First name">
                            </div>
                            <div class="col">
                                <label for="exampleFormControlInput1" class="form-label">Nama Belakang</label>
                                <input type="text" class="form-control" aria-label="Last name">
                            </div>
                        </div>

                        <div class="mb-2">
                            <label for="exampleFormControlInput1" class="form-label">Email</label>
                            <input type="email" class="form-control" id="exampleFormControlInput1">
                        </div>

                        <div class="mb-2">
                            <label for="exampleFormControlInput1" class="form-label">No Telepon</label>
                            <input type="text" class="form-control" id="exampleFormControlInput1">
                        </div>

                        <div class="mb-2">
                            <label for="exampleFormControlTextarea1" class="form-label">Alamat</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                        </div>

                        <label for="exampleDataList" class="form-label">Provinsi</label>
                        <input class="form-control" list="datalistOptions" id="exampleDataList" placeholder="Type to search...">
                        <datalist id="datalistOptions">
                            <option value="Jakarta">
                            <option value="Bali">
                            <option value="Jawa Barat">
                            <option value="Jawa Tengah">
                            <option value="Lampung">
                        </datalist>


                        <br>
                        <p>Plih Label Pengiriman</p>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            <label class="form-check-label" for="flexCheckDefault">
                                Kantor
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            <label class="form-check-label" for="flexCheckDefault">
                                Rumah
                            </label>
                        </div>
                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <button class="btn btn-success me-md-2" type="button">Simpan</button>
                        </div>
                    </div>

                </div>

                <div class="col-lg-4 mb-4">
                    <div class="card border solid p-3 shadow-sm">
                        <div class="alert alert-success" role="alert">
                            Buat Pesanan!
                        </div>

                        <div class="card-body">
                            <div class="row">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck">
                                    <label class="form-check-label" for="gridCheck">
                                        OVO
                                        <p style="font-size: smaller;">Tautkan Akun OVO</p>
                                    </label>
                                </div>

                                <div class="col-auto">
                                    <img src="{{ asset('template') }}/img/ovo.png" style="height: 50px;">
                                </div>
                            </div>
                        </div>

                        <br>

                        <div class="card-body">
                            <div class="row">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck">
                                    <label class="form-check-label" for="gridCheck">
                                        Debit Instan
                                        <p style="font-size: smaller;">Untuk Nasabah BCA</p>
                                    </label>
                                </div>

                                <div class="col-auto">
                                    <img src="{{ asset('template') }}/img/bca.png" style="height: 50px;">
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="card-body">
                            <div class="row">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck">
                                    <label class="form-check-label" for="gridCheck">
                                        Bayar di Tempat
                                        <p style="font-size: smaller;">Cash On Delivery</p>
                                    </label>
                                </div>

                                <div class="col-auto">
                                    <img src="{{ asset('template') }}/img/cod.png" style="height: 60px;">
                                </div>
                            </div>
                        </div>

                        <br>
                        <p style="font-size:medium;" class="font-weight-bold">Rangkuman Pesanan</p>
                        <div class="row no-gutters">
                            <div class="col">
                                <p style="font-size:small;">Subtotal</p>
                            </div>
                            <div class="col-auto font-weight-bold">
                                <p>Rp 52.900</p>
                            </div>
                        </div>

                        <div class="row no-gutters">
                            <div class="col">
                                <p style="font-size:small;">Biaya Pengiriman</p>
                            </div>
                            <div class="col-auto font-weight-bold">
                                <p>Rp 8.900</p>
                            </div>
                        </div>

                        <div class="row no-gutters">
                            <div class="col">
                                <p style="font-size:small;" class="font-weight-bold">Total :</p>
                            </div>
                            <div class="col-auto text-success font-weight-bold">
                                <p>Rp 61.800</p>
                            </div>
                        </div>

                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <button class="btn btn-success me-md-2" type="button">Simpan</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


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