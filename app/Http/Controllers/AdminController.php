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
        $eventos = Evento::with('temas.contenido')->get();
//

      //  $infraestructura = $evento->temas[0]->infraestructura;
        //$nombre_contenido = $contenido->nombre;
        //$nombre_infraestructura = $infraestructura->id_ambiente;
        // ---- return $evento->temas[0]->infraestructura; -- esto retorna solo la infraestructura usada
        // ---- return $evento->temas[0]->contenido; -- esto retorna solo el contenido
        // ----- return count($eventos[0]->temas); --- te permite contar los temas


        return view('admin/eventos',['eventos'=>$eventos]);
    }


    public function indexTemas(Evento $evento)
    {
        $eventos = Evento::with('temas.contenido', 'temas.infraestructura')->find($evento->id);
        //$ambiente = Ambiente::find();

      //  $infraestructura = $evento->temas[0]->infraestructura;
        //$nombre_contenido = $contenido->nombre;
        //$nombre_infraestructura = $infraestructura->id_ambiente;
        // ---- return $evento->temas[0]->infraestructura; -- esto retorna solo la infraestructura usada
        // ---- return $evento->temas[0]->contenido; -- esto retorna solo el contenido
        // ----- return count($eventos[0]->temas); --- te permite contar los temas

        $ambiente = Ambiente::get();
       //return $eventos;
       return view('admin/eventos/temas',['eventos'=>$eventos, 'ambientes'=>$ambiente]);
    }


    public function indexPagina_web()
    {
        return view('admin/pagina_web',["msg"=>"Hello! I am admin"]);
    }

    public function indexAmbiente()
    {
        $ambientes = Ambiente::get();
        return view('admin/ambientes',['ambientes'=>$ambientes]);
    }

}
