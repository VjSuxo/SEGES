<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ControladorController extends Controller
{
    public function controladorHome()
    {
        return view('controlador/home',["msg"=>"Hello! I am controlador"]);
    }

    public function controladorEvento()
    {
        return view('controlador/evento/index',["msg"=>"Hello! I am controlador"]);
    }

    public function controladorEvento_Horario()
    {
        return view('controlador/evento/horario',["msg"=>"Hello! I am controlador"]);
    }

    public function controladorEvento_Asistencia()
    {
        return view('controlador/evento/asistencia',["msg"=>"Hello! I am controlador"]);
    }

    public function controladorAmbientes()
    {
        return view('/controlador/ambientes',["msg"=>"Hello! I am controlador"]);
    }

    public function controladorAmbientesInfo()
    {
        return view('/controlador/ambientesinfo',["msg"=>"Hello! I am controlador"]);
    }

    public function controladorEvento_Certificados()
    {
        return view('controlador/evento/certificados',["msg"=>"Hello! I am controlador"]);
    }

    public function controladorEvento_Reservas_Inscrip()
    {
        return view('controlador/evento/reservas_inscripciones',["msg"=>"Hello! I am controlador"]);
    }

}
