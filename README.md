# Tugas Pos Sederhana
Ini adalah sample tugas pos sederhana untuk mobile apps


## Table of Content
### Laravel
disini adalah letak dari penghubung dari mobile ke databse.

## Petunjuk Penggunaan 
1. pastikan buat database bernama ```resfull``
2. ketikan ketikan perintah ```php artisan migrate```
3. cek pastikan terdapat table ```shirt```
4. jalankan aplikasi posman untuk menmbahkan data

## Petunjuk Postman
1. create new collection dan beri nama ```mobile```
2. kemudian klik kanan dan add request ```get```, dan klik 2kali
3. masukan ```http://localhost:8000/api/shirt``` pada kolom link dan pilih method ```get```
4. jika laravel sudah aktif dan terhubung ke databse tanpa terkendala akan muncul response dengan nilai success ```true```
5. buat response baru lagi dengan nama create,kemudian masukan ```http://localhost:800/api/shirt``` kemudian ubah request menjadi ```post``
6. jika  sukses akan menghasikan response dengan nilai success ```true```


## install aplikasi mobile
1. donwload file dengan extensi ```.apk```diatas dan install, (Android User Only)


## Mobile
### View Mobile App
Keterangan | Foto |
:---:|:------:|
1. Tampilan Awal Ketika Aplikasi dibuka | ![tampilan awal](https://res.cloudinary.com/dycpjvu2b/image/upload/v1651160657/1.splashscreen_lacjoy.png)|
2. tampilan home atau utama | ![tampilan utama](https://res.cloudinary.com/dycpjvu2b/image/upload/v1651160658/2.home_ifrhdz.png)|
3. tampilan detail produk | ![tampilan detail](https://res.cloudinary.com/dycpjvu2b/image/upload/v1651160659/3.klik_salah_satu_product_yrgjw9.png)|
4. tampilan troli jika barang belum di tambahkan | ![troli kosong](https://res.cloudinary.com/dycpjvu2b/image/upload/v1651160657/4.checkout_tanpa_product_tmgafe.png)|
5. tampilan jika setelah menekan tombol tambahkan ke trolli | ![troli dengan barang](https://res.cloudinary.com/dycpjvu2b/image/upload/v1651160658/5.checkout_product_dmugtz.png)|
6. tampilan pilhan metode pembayaran, setelah klik tombol bayar | ![metode pembayaran](https://res.cloudinary.com/dycpjvu2b/image/upload/v1651160658/6.pilih_pembayaran_s6gmfd.png)|
7. tampilan kode unik setelah memilih / klik metode pembayaran | ![kode unix](https://res.cloudinary.com/dycpjvu2b/image/upload/v1651160659/7.nomer_uni_pembayaran_x6qta9.png)|
8. tampilan setelah menyelesaikan transaksi | ![transaksi sukses](https://res.cloudinary.com/dycpjvu2b/image/upload/v1651160658/8.transaksi_berhasil_fmnosp.png)|
