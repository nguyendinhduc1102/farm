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

/*Route::get('/', function () {
    return view('welcome');
});*/
Route::get('/','ClientController@home');
Route::get('/shop','ClientController@shop');

Route::get('/cart','ClientController@cart');
Route::get('/checkout','ClientController@checkout');
Route::get('/loginclient','ClientController@loginclient');
Route::get('/signupclient','ClientController@signupclient');
Route::post('/updateqty','ClientController@updateqty');
Route::get('/removeitem/{id}','ClientController@removeitem');
Route::post('/postcheckout','ClientController@postcheckout');
Route::post('/createaccount','ClientController@createaccount');
Route::post('/assessaccount','ClientController@assessaccount');
Route::get('/logoutclient','ClientController@logoutclient');
Route::get('/addtocart/{id}','ClientController@addtocart');



Route::get('/admin', 'AdminController@dashboard');
Route::get('/orders', 'AdminController@orders');

Route::get('viewpdf/{id}','PdfController@viewpdf');


Route::get('/categories', 'CategoryController@categories');
Route::get('/addcategory', 'CategoryController@addcategory');
Route::post('/savecategory', 'CategoryController@savecategory');
Route::get('/editcategory/{id}', 'CategoryController@editcategory');
Route::post('/updatecategory', 'CategoryController@updatecategory');
Route::get('/deletecategory/{id}', 'CategoryController@deletecategory');
Route::get('/view_by_cat/{name}','CategoryController@view_by_cat');

Route::get('/products', 'ProductController@products');
Route::get('/addproduct', 'ProductController@addproduct');
Route::post('/saveproduct', 'ProductController@saveproduct');
Route::get('/editproduct/{id}', 'ProductController@editproduct');
Route::post('/updateproduct', 'ProductController@updateproduct');
Route::get('/deleteproduct/{id}', 'ProductController@deleteproduct');
Route::get('/activateproduct/{id}','ProductController@activateproduct');
Route::get('/unactivateproduct/{id}','ProductController@unactivateproduct');




Route::get('/addslider', 'SliderController@addslider');
Route::get('/sliders', 'SliderController@sliders');
Route::post('/saveslider', 'SliderController@saveslider');
Route::get('/editslider/{id}', 'SliderController@editslider');
Route::post('/updateslider', 'SliderController@updateslider');
Route::get('/deleteslider/{id}', 'SliderController@deleteslider');
Route::get('/activateslider/{id}','SliderController@activateslider');
Route::get('/unactivateslider/{id}','SliderController@unactivateslider');
Auth::routes();


Auth::routes();

Route::get('/home', 'HomeController@index');
