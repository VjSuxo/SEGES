<?php

namespace App\Http\Controllers;

use Dompdf\Dompdf;

use App\Models\Users;
use App\Models\Evento;
use App\Models\Controlador;
use App\Models\Participante;
use App\Models\Ambiente;
use App\Models\Asistencia;
use App\Models\Infraestructura;
use App\Models\Reserva;
use App\Models\eventoParticipante;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ControladorController extends Controller
{
    public function controladorHome()
    {

        //$user_id = Auth::id();
        $controlador = Controlador::where('usuario_id',Auth::id())->first();
        $eventos = Evento::with('temas.contenido','controlador')->where('controlador_id',$controlador->id)->get();
       // return $eventos;

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

    public function controladorEventoIndex(Evento $eve)
    {
        $evento = Evento::with('comentario', 'comentario.participante', 'comentario.participante.usuario' ,'temas.contenido' , 'temas.expositor', 'temas.expositor.usuario')->find($eve->id);

        //return  $evento->temas;

        return view('controlador/evento/index',['evento'=>$evento]);
    }

    public function controladorEventoInformacion(Evento $evento)
    {
        //$evento = Evento::with('temas.contenido')->find($evento->id);
        //return $evento;
        return view('controlador/evento/pp',['evento'=>$evento]);
    }



    public function controladorEvento_Horario(Evento $evento)
    {
        return view('controlador/evento/horario',['evento' => $evento]);
    }

    public function controladorEvento_Asistencia(Evento $evento)
    {
        $evento = Evento::with('asistencias','asistencias.participante','asistencias.participante.usuario' )->find($evento->id);
       // return $evento;
        return view('controlador/evento/asistencia',['evento'=>$evento]);
    }


    public function controladorAmbientes()
    {

        $controlador = Controlador::where('usuario_id',Auth::id())->first();
       // return $controlador;
        $ambientes =  Controlador::with('ambientes')->find($controlador->id);
        //return $ambientes->ambientes;
        return view('/controlador/ambientes',['ambientes'=>$ambientes]);
    }

    public function controladorAmbientesInfo(Ambiente $ambiente)
    {
      //return $ambiente;
        // , 'infraestructura.tema'  :with('infraestructura.temas')->
        $infra = Ambiente::with('infraestructuras.tema', 'infraestructuras.reservas')->find($ambiente->id);
       // return $infra;
        //return $infraestructura;

        //$ambiente = Ambiente::find($ambiente->id);
        //$infraestructuras = $ambiente->infraestructuras;
        //$reservas = Reserva::get();



        return view('/controlador/ambientesinfo',['informacion'=>$infra]);
    }

    public function controladorEvento_Certificados(Evento $evento)
    {
        return view('controlador/evento/certificados',['evento' => $evento]);
    }

    public function controladorEvento_Reservas_Inscrip(Evento $evento)
    {
        $evento = Evento::with('eventoParticipante', 'eventoParticipante.participante', 'eventoParticipante.participante.usuario')->find($evento->id);
        //return $evento;
        return view('controlador/evento/reservas_inscripciones',['evento'=>$evento]);
    }

    public function controladorFilRe(Evento $evento)
    {
        $evento = Evento::with(['eventoParticipante' => function ($query) {
            $query->where('reservado', '=', 1);
            $query->with(['participante', 'participante.usuario']);
    }])->find($evento->id);
    //return $evento;
        return view('controlador/evento/reservas_inscripciones',['evento'=>$evento]);
    }

    public function controladorFilIns(Evento $evento)
    {
        $evento = Evento::with(['eventoParticipante' => function ($query) {
            $query->where('inscrito', '=', 1);
            $query->with(['participante', 'participante.usuario']);
            }])->find($evento->id);
        return view('controlador/evento/reservas_inscripciones',['evento'=>$evento]);
    }

    public function controladorFilTodo(Evento $evento)
    {
        $evento = Evento::with('eventoParticipante', 'eventoParticipante.participante', 'eventoParticipante.participante.usuario')->find($evento->id);
        return view('controlador/evento/reservas_inscripciones',['evento'=>$evento]);
    }

    public function generarPDF()
    {
    // Obtener los datos que se utilizarán en la vista
    //$data = [...];

    // Crear una nueva instancia de Dompdf
    //$dompdf = new Dompdf();

    // Renderizar la vista en HTML y cargarla en Dompdf
    //$html = view('pdf', compact('data'))->render();
    //$dompdf->loadHtml($html);

    // Configurar las opciones de Dompdf
    //$dompdf->setPaper('A4', 'landscape');

    // Generar el archivo PDF y enviarlo al navegador
    //$dompdf->render();
    //re/turn $dompdf->stream('archivo.pdf');
   // $data = [
   //     'nombre' => 'Juan',
   //     'apellido' => 'Pérez',
   //     'edad' => 25,
   // ];

  //  $pdf = new Dompdf();
  //  $pdf->loadHtml(view('certificado', compact('data')));
  //  $pdf->setPaper('A4', 'landscape');
  //  $pdf->render();
  //  return $pdf->stream();
  return view('certificado');
    }


}
