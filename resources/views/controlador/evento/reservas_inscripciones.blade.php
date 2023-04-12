<x-layouts.app>
    @vite(['resources/css/style_inscritos.css','resources/css/style_ListaEstado.css'])
    <div class="contenedor">
        <div class="navegadorUsuario">
            <ul class="nav nav-tabs">
              <li class="nav-item">
                <a class="nav-link" href="{{ route('controlador.home') }}">Otros Eventos</a>
              </li>
            <li class="nav-item">
              <div class="">
                <a class="nav-link" aria-current="page" href="{{ route('controlador.evento', $evento->id) }}">Informacion</a>
              </div>
            </li>
              <li class="nav-item">
                <a class="nav-link activado" href="{{ route('controlador.evento_ResIns',$evento->id) }} ">Reservas | Inscripciones</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ route('controlador.evento_asistencia',$evento->id) }}">Asistencia</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ route('controlador.evento_certificados',$evento->id) }}">Certificados</a>
              </li>
            </ul>
          </div>

        <div class="container General">
            <div class="listaEstado">
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                  <label class="form-check-label" for="inlineRadio1">  <a href=" {{ route('controlador.IR_Fil_Reserva',$evento->id) }} "  class="btn btn-primary"> <p>RESERVAS</p>  </a> </label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                  <label class="form-check-label" for="inlineRadio2"><a href=" {{ route('controlador.IR_Fil_Ins',$evento->id) }} "  class="btn btn-primary"> <p>INSCRIPCION</p>  </a></label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                    <label class="form-check-label" for="inlineRadio2"><a href=" {{ route('controlador.IR_Fil_Todo',$evento->id) }} "  class="btn btn-primary"> <p>TODO</p>  </a></label>
                  </div>
            </div>

            <div class="lado">
                <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">CI</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Estado</th>
                      </tr>
                    </thead>
                    <tbody>

                        @foreach ( $evento->eventoParticipante as $participante )
                        <tr>
                            <th scope="row"> {{ $participante->participante->usuario->id }} </th>
                            <td>{{ $participante->participante->usuario->name }} </td>
                            <td>{{ $participante->participante->usuario->apellido_Pat }} {{ $participante->participante->usuario->apellido_Mat }} </td>
                            <td>{{ $participante->participante->usuario->email }} </td>
                            <td>
                                @if ($participante->inscrito == 1)
                                    Inscrito
                                @endif
                                @if ($participante->reservado == 1)
                                    Reservado
                                @endif
                            </td>

                        </tr>
                        @endforeach


                    </tbody>
                  </table>
                <div class="botones">
                    <div class="lado">
                        <h4 class="subTexto">Inscripcion :</h4>
                    <button type="button" class="btn btn-primary">Finalizar </button>
                    </div>
                    <div class="lado">
                        <h4 class="subTexto">Reserva :</h4>
                    <button type="button" class="btn btn-primary">Finalizar </button>
                    </div>
                </div>
            </div>

            </div>
    </div>
</x-layouts.app>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    @vite(['resources/css/style.css','resources/css/style_texto.css'])
    <title>Document</title>
     <!-- Fonts -->
     <link rel="preconnect" href="https://fonts.bunny.net">
     <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />
</head>
<body >


    <div class="contenedor">

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
