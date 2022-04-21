<?php

use App\Http\Controllers\PageController;
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

/*  Route::get('/', function () {
    return view('welcome');
}); */

/* Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard'); */

require __DIR__.'/auth.php';

Route::get('/', [PageController::class, 'index'])->name('index');

Route::get('/dashboard', [PageController::class, 'dashboard'])->name('dashboard');

Route::get('/addproducts', [PageController::class, 'viewadd'])->name('viewadd')->middleware('auth');


Route::post('/addproduct', [PageController::class, 'addproducts'])->name('addproducts');

Route::get('/manage', [PageController::class, 'manage'])->name('manage');

Route::get('{id}/edit', [PageController::class, 'edit'])->name('edit');

Route::post('{id}/update', [PageController::class, 'update'])->name('update');

Route::get('{id}/delete', [PageController::class, 'delete'])->name('delete');

Route::get('{id}/details', [PageController::class, 'details'])->name('details');

Route::get('{id}/add_to_cart', [PageController::class, 'add_to_cart'])->name('add_to_cart')->middleware('auth');

Route::get('/cartlist', [PageController::class, 'cartlist'])->name('cartlist');

Route::post('/updatecart/{id}', [PageController::class, 'updatecart'])->name('updatecart');

Route::get('/deletecart/{id}', [PageController::class, 'deletecart'])->name('deletecart');

Route::get('clear', [PageController::class, 'clear'])->name('clear');

Route::get('/checkout', [PageController::class, 'checkout'])->name('checkout');

Route::post('/check', [PageController::class, 'check'])->name('check');

Route::get('/payment', [PageController::class, 'payment'])->name('payment');

Route::post('/pay', [PageController::class, 'pay'])->name('pay');

Route::get('/redirect', [PageController::class, 'redirect'])->name('redirect');

Route::get('/orderdetails', [PageController::class, 'orderdetails'])->name('orderdetails');

Route::get('/veiworders', [PageController::class, 'veiworders'])->name('veiworders');