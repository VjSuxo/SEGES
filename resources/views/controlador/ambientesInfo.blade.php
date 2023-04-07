<x-layouts.app>
    @vite(['resources/css/style_cards.css','resources/css/style_ListaEstado.css','resources/css/style_controlador.css'])
    <div class="contenedor">
        <div class="navegadorUsuario">
            <ul class="nav nav-tabs">
              <li class="nav-item">
                <div class="">
                  <a class="nav-link" aria-current="page" href="/administrador/index.html">Eventos</a>
                </div>
              </li>
              <li class="nav-item activado">
                <a class="nav-link" href="/administrador/usuario.html">Ambientes</a>
              </li>
            </ul>
        </div>

        <div class="General border">
            <h1 class="titulo"> {{ $informacion->nombre }} </h1>
            <div class="row align-items-start">
                <div class="col m-5 border">
                    <h1 class="titulo">Agenda</h1>
                    <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Horario</th>
                            <th scope="col">Dia</th>
                            <th scope="col">Mes</th>
                            <th scope="col">Año</th>
                            <th scope="col">Tiempo</th>
                          </tr>
                        </thead>
                        <tbody>

                          @foreach ( $informacion->infraestructuras as $infraestructura )
                          <tr>
                            <th scope="row"> {{ $infraestructura->id }} </th>
                            <td> {{$infraestructura->tema->hora_inicio}} {{$infraestructura->tema->hora_fin}} </td>
                            <td> {{
                                    \Carbon\Carbon::parse($infraestructura->reservas[0]->fecha)->day
                                  }}
                             <!--    {{
                                    \Carbon\Carbon::parse($infraestructura->reservas[0]->fecha)->locale('es')->isoFormat('dddd')
                                 }}  -->
                            </td>
                            <td>  {{ \Carbon\Carbon::parse($infraestructura->reservas[0]->fecha)->locale('es')->monthName }} </td>
                            <td>    {{ \Carbon\Carbon::parse($infraestructura->reservas[0]->fecha)->year }}</td>
                            <td>
                                @if (\Carbon\Carbon::parse($infraestructura->tema->hora_inicio)->hour > \Carbon\Carbon::parse($infraestructura->tema->hora_fin)->hour)
                                    {{  \Carbon\Carbon::parse($infraestructura->tema->hora_inicio)->hour -
                                    \Carbon\Carbon::parse($infraestructura->tema->hora_fin)->hour }}
                                @else
                                {{  \Carbon\Carbon::parse($infraestructura->tema->hora_fin)->hour -
                                    \Carbon\Carbon::parse($infraestructura->tema->hora_inicio)->hour }}
                                @endif
                                    horas

                            </td>
                          </tr>
                          @endforeach



                        </tbody>
                    </table>
                </div>

                <div class="col m-5 border d-flex flex-column align-items-center  informacionInfra" >
                    <h1 class="titulo">Infraestructura</h1>

                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row g-0">
                          <div class="col-md-4 image">
                            <img src="/storage/imagenes/evento1.jpg" class="img-fluid" alt="...">
                          </div>
                          <div class="col-md-6">
                            <div class="card-body">
                              <h5 class="card-title">Caracteristicas</h5>
                              <ul class="list-group list-group-flush">
                                <div class="cuerpo">
                                    <li class="list-group-item"> Capacidad : {{ $informacion->capacidad }}  </li>
                                    <br>
                                    <li class="list-group-item">Estado :  {{ $informacion->estado }}</li>
                                    <br>
                                </div>
                            </ul>
                            </div>
                          </div>
                        </div>
                      </div>


                </div>

            </div>
            <a class="btn btn-primary position-absolute top-100 start-50 translate-middle"  href="{{ url()->previous() }}">Regresasr</a>
     </div>

    </div>
</x-layouts.app>
