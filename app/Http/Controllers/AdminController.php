<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function adminHome()
    {
        return view('admin/home',["msg"=>"Hello! I am admin"]);
    }

    public function indexUsuarios()
    {
        return view('admin/usuarios',["msg"=>"Hello! I am admin"]);
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
