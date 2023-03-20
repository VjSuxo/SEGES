<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ControladorController;
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
    Route::get("/admin/home",[AdminController::class, 'adminHome'])->name("admin.home");
    //Route::get("/admin/home",[Admin_ImgController::class, 'index'])->name("admin.imagenes");
    Route::get("/admin/usuarios",[AdminController::class, 'indexUsuarios'])->name("admin.usuarios");
    Route::get("/admin/eventos",[AdminController::class, 'indexEventos'])->name("admin.eventos");
    Route::get("/admin/pagina_web",[AdminController::class, 'indexPagina_Web'])->name("admin.pagina_web");
    Route::get("/admin/ambientes",[AdminController::class, 'indexAmbiente'])->name("admin.ambiente");
});

// Route controlador
Route::middleware(['auth','user-role:controlador'])->group(function()
{
    Route::get("/controlador/home",[ControladorController::class, 'controladorHome'])->name("controlador.home");

    //crear un grup de eventos
    Route::get("/controlador/evento/index",[ControladorController::class, 'controladorEvento'])->name("controlador.evento");
    Route::get("/controlador/evento/ambiente",[ControladorController::class, 'controladorEvento_Ambiente'])->name("controlador.evento_ambiente");
    Route::get("/controlador/evento/horario",[ControladorController::class, 'controladorEvento_Horario'])->name("controlador.evento_horario");
    Route::get("/controlador/evento/asistencia",[ControladorController::class, 'controladorEvento_Asistencia'])->name("controlador.evento_asistencia");
    Route::get("/controlador/evento/certificados",[ControladorController::class, 'controladorEvento_Certificados'])->name("controlador.evento_certificados");
    Route::get("/controlador/evento/reservas_inscripciones",[ControladorController::class, 'controladorEvento_Reservas_Inscrip'])->name("controlador.evento_reservas_inscripcion");
});

