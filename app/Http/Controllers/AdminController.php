<?php

namespace App\Http\Controllers;

//Importando modelos
use App\Models\User;
use App\Models\Evento;
use App\Models\Ambiente;
use App\Models\Infraestructura;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function adminHome()
    {
        return view('admin/home',["msg"=>"Hello! I am admin"]);
    }
    // obteniendo la tabla de usuarios
    public function indexUsuarios()
    {
        $user = User::get();
        return view('admin/usuarios',['usuarios'=>$user]);

    }

    public function indexEventos()
    {
        $eventos = Evento::get();
        $evento = Evento::with('temas.contenido')->find(1);
        $contenido = $evento->temas[0]->contenido;
      //  $infraestructura = $evento->temas[0]->infraestructura;
        //$nombre_contenido = $contenido->nombre;
        //$nombre_infraestructura = $infraestructura->id_ambiente;
        return $evento->temas;
        //return $infraestructura;
        return view('admin/eventos',['eventos'=>$eventos]);
    }



    public function indexPagina_web()
    {
        return view('admin/pagina_web',["msg"=>"Hello! I am admin"]);
    }

    public function indexAmbiente()
    {
        return view('admin/ambientes',["msg"=>"Hello! I am admin"]);
    }

}
