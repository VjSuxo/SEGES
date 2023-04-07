<?php

namespace App\Http\Controllers;
use App\Models\Evento;
use App\Models\Ambiente;
use App\Models\Infraestructura;
use App\Models\Reserva;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ControladorController extends Controller
{
    public function controladorHome()
    {

        $user_id = Auth::id();
        $eventos = Evento::get();
        $eventos = Evento::with('temas.contenido')->get();
        // modificar db
         //     $eventos = Evento::with('temas')
         //       ->whereHas('temas', function ($query) use ($idControlador) {
         //           $query->where('id_controlador', $idControlador);
         //       })
         //       ->get();
                // para poder filtrar
        //return $eventos;
        return view('controlador/home',['eventos'=>$eventos]);
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
        $ambientes = Ambiente::get();
        return view('/controlador/ambientes',['ambientes'=>$ambientes]);
    }

    public function controladorAmbientesInfo(Ambiente $ambiente)
    {
        // , 'infraestructura.tema'  :with('infraestructura.temas')->
        $infra = Ambiente::with('infraestructuras.tema', 'infraestructuras.reservas')->find($ambiente->id);
        //return $infra;
        //return $infraestructura;

        //$ambiente = Ambiente::find($ambiente->id);
        //$infraestructuras = $ambiente->infraestructuras;
        //$reservas = Reserva::get();



        return view('/controlador/ambientesinfo',['informacion'=>$infra]);
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
