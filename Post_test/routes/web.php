<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('template.home');
});

Route::get('/detail', function () {
    return view('template.detail_baju');
});

Route::get('/checkout', function () {
    return view('template.checkout');
});

Route::get('/login', function () {
    return view('template.login');
});

Route::get('/daftar', function () {
    return view('template.daftar');
});

Route::get('/akun', function () {
    return view('template.akun');
});
