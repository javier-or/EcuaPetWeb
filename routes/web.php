<?php

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
    return view('welcome');
});
Route::get('/my-pet/{id}','MascotaController@myPet');

/**
 USER MANAGEMENT
 */
Route::resource('/apiv1/login','UsersController@login');
Route::post('/apiv1/register','UsersController@store');
Route::resource('/apiv1/user','UsersController');

/**
 PET MANAGEMENT
 */
Route::resource('/apiv1/mascota','MascotaController');

Route::group(['middleware'=>'cors'],function (){
    Route::post('/apiv1/login','ApiAuthController@userAuth');
});