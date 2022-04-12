<?php

use App\Http\Controllers\crud_Malas;
// use App\Http\Controllers\crudContoller;
use Illuminate\Support\Facades\Route;

/*
----------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('silahkan ke web /crud ');
});

Route::get('/crud', [crud_Malas::class, 'index']);
Route::get('/crud/tambah', [crud_Malas::class, 'tambah']);
Route::post('/crud/store', [crud_Malas::class, 'store']);
Route::get('/crud/edit/{id}', [crud_Malas::class, 'edit']);
Route::post('/crud/update', [crud_Malas::class, 'update']);
Route::get('/crud/hapus/{id}', [crud_Malas::class, 'hapus']);


Route::get('/crud/cari', [crud_Malas::class, 'cari']);
