<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use  App\Http\Controllers\Admin\Admin_ImgController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
//0 = admin, 1 = user,  2 = controlador, 3 = expositor
// Route User
Route::middleware(['auth','user-role:user'])->group(function()
{
    Route::get("/user//home",[HomeController::class, 'userHome'])->name("user.home");
});
// Route Expositor
Route::middleware(['auth','user-role:expositor'])->group(function()
{
    Route::get("/expositor/home",[HomeController::class, 'expositorHome'])->name("expositor.home");
});
// Route Admin
Route::middleware(['auth','user-role:admin'])->group(function()
{
    Route::get("/admin/home",[HomeController::class, 'adminHome'])->name("admin.home");
    //Route::get("/admin/home",[Admin_ImgController::class, 'index'])->name("admin.imagenes");

});

// Route controlador
Route::middleware(['auth','user-role:controlador'])->group(function()
{
    Route::get("/controlador/home",[HomeController::class, 'controladorHome'])->name("controlador.home");
});

