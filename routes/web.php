<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\EventoController;
use App\Http\Controllers\ControladorController;
use App\Http\Controllers\ExpositorController;
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


Auth::routes(['verify' => true]);
//0 = admin, 1 = user,  2 = controlador, 3 = expositor
// Route User
Route::middleware(['auth','user-role:user','verified','audit'])->group(function()
{

    Route::controller(UserController::class)->group(function(){
        Route::get("/user/evento/{evento}/index", 'userEventosIndex')->name("user.evento-index");
        Route::get("/user/evento/{evento}/material", 'userEventosMaterial')->name("user.evento-material");
        Route::post('/','crearComentario')->name('user.crearComentario');
        Route::post('/','storeEvento')->name('user.storeEvento');
        //Crear EVENTO
        Route::get("/user/evento/crearEvento", 'crearEvento')->name("user.crearEvento");

    });


    Route::get("/user/home",[HomeController::class, 'userHome'])->name("user.home");
    Route::get("/user/misEventos",[UserController::class, 'userEventos'])->name("user.misEventos");

    Route::get("/home",[HomeController::class, 'userHome'])->name("home");
});
// Route Expositor
Route::middleware(['auth','user-role:expositor','audit'])->group(function()
{
    Route::get("/expositor/home",[ExpositorController::class, 'expositorHome'])->name("expositor.home");

    Route::get("/expositor/evento/index",[ExpositorController::class, 'expositorEvento'])->name("expositor.eventoIndex");
    Route::get("/expositor/evento/Material",[ExpositorController::class, 'expositorMaterial'])->name("expositor.eventoMaterial");
});
// Route Admin
Route::middleware(['auth','user-role:admin','audit'])->group(function()
{
    Route::controller(AdminController::class)->group(function(){
        Route::get("/admin/usuarios",'indexUsuarios')->name("admin.usuarios");
        Route::get("/admin/{usuario}/historial_Usuarios",'historialUsuario')->name("admin.usuariosHistorial");
        Route::get("/admin/eventos",'indexEventos')->name("admin.eventos");
        Route::get("/admin/eventos/{evento}/temas",'indexTemas')->name("admin.temas");
        Route::get("/admin/ambientes",'indexAmbiente')->name("admin.ambiente");
    });
    Route::get("/admin/home",[AdminController::class, 'adminHome'])->name("admin.home");
    //Route::get("/admin/home",[Admin_ImgController::class, 'index'])->name("admin.imagenes");


    Route::get("/admin/pagina_web",[AdminController::class, 'indexPagina_Web'])->name("admin.pagina_web");





});

// Route controlador
Route::middleware(['auth','user-role:controlador','audit'])->group(function()
{
    Route::controller(ControladorController::class)->group(function(){
        Route::get("/controlador/home", 'controladorHome')->name("controlador.home");

        Route::get("/controlador/evento/{eve}/index",'controladorEventoIndex')->name("controlador.evento");
        Route::get("/controlador/evento/{evento}/pp",'controladorEventoInformacion')->name("controlador.eventoInformacion");
        Route::get("/controlador/evento/{evento}/reservas_inscripciones",'controladorEvento_Reservas_Inscrip')->name("controlador.evento_ResIns");
            Route::get("/{evento}/desactivarRes",'desactivarRes')->name("controlador.desRes");
            Route::get("/{evento}/desactivarIns",'desactivarIns')->name("controlador.desIns");
            Route::get("/{evento}/activarIns",'activarIns')->name("controlador.activarIns");
        Route::get("/controlador/evento/{evento}/horario", 'controladorEvento_Horario')->name("controlador.evento_horario");
        Route::get("/controlador/evento/{evento}asistencia",'controladorEvento_Asistencia')->name("controlador.evento_asistencia");
        Route::get("/controlador/evento/{evento}/certificados",'controladorEvento_Certificados')->name("controlador.evento_certificados");

        Route::get("c/evento/{evento}/reservas_inscripciones",'controladorFilRe')->name("controlador.IR_Fil_Reserva");
        Route::get("con/evento/{evento}/reservas_inscripciones",'controladorFilIns')->name("controlador.IR_Fil_Ins");
        Route::get("cont/evento/{evento}/reservas_inscripciones",'controladorFilTodo')->name("controlador.IR_Fil_Todo");

        Route::get("/controlador/ambientes",'controladorAmbientes')->name("controlador.ambientes");
        Route::get("/controlador/{ambiente}/ambientesinfo",'controladorAmbientesInfo')->name("controlador.ambientesInfo");
    });

    Route::get('/{usuario}/{evento}/certificado',[ControladorController::class, 'generarPDF'])->name("controlador.GenerarPDF");
    Route::get('{evento}/certificado',[ControladorController::class, 'enviarPDF'])->name("controlador.enviarPDF");
    Route::get('e/{evento}/certificados',[ControladorController::class, 'cargarPDF'])->name("controlador.cargarPDF");
    //crear un grup de eventos




});

