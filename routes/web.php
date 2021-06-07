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

//Route::get('/', function () {
//    return view('welcome');
//});


Auth::routes();

Route::get('/',[\App\Http\Controllers\ProductController::class,'index'])->name('product.index');
Route::get('product/create',[\App\Http\Controllers\ProductController::class,'create'])->name('product.create');
Route::post('product/store',[\App\Http\Controllers\ProductController::class,'store'])->name('product.store');
Route::get('product/edit/{id}',[\App\Http\Controllers\ProductController::class,'edit'])->name('product.edit');
Route::post('product/update',[\App\Http\Controllers\ProductController::class,'update'])->name('product.update');
Route::get('product/destroy/{id}',[\App\Http\Controllers\ProductController::class,'destroy'])->name('product.destroy');
Route::get('product/show/{id}',[\App\Http\Controllers\ProductController::class,'show'])->name('product.show');


//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

