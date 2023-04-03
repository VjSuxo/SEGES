<?php

namespace App\Http\Controllers;

//Importando modelos
use App\Models\User;

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
        return view('admin/eventos',["msg"=>"Hello! I am admin"]);
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
