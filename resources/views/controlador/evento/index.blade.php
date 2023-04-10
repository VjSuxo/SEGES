<x-layouts.app>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    @vite(['resources/css/style_controlador.css'])
    <div class="contenedor">
        <div class="navegadorUsuario">
          <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link" href="{{ route('controlador.home') }}">Otros Eventos</a>
              </li>
            <li class="nav-item">
              <div class="activado">
                <a class="nav-link" aria-current="page" href="{{ route('controlador.evento', $evento->id) }}">Informacion</a>
              </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('controlador.evento_horario',$evento->id) }}">Horario</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="">Reservas | Inscripciones</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ route('controlador.evento_asistencia') }}">Asistencia</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ route('controlador.evento_certificados') }}">Certificados</a>
              </li>
          </ul>
        </div>

        <div class="contaniner General">

            <div class="parent">
                <div class="div1"> </div>
                <div class="div2">
                    <div class="contenido">
                        <h1> {{ $evento->nombre }} </h1>
                        <p> {{ $evento->descripcion }} </p>

                  </div>
                </div>
                <div class="div3">
                    <div class="card" style="width: 20rem;">
                        <img src="/storage/imagenes/fondo-Evento1.jpg" class="card-img-top" alt="foto del evento">
                        <div class="card-body">
                          <div class="cb-Btn position-relative">
                            <a href="#" class=" position-absolute top-100 start-50 translate-middle mt-1 btn btn-primary">Inscribirme</a>
                          </div>
                          <div class="listaG border">
                            <h5>Detalle :</h5>
                            <ul class="list-group list-group-flush">
                              <li class="list-group-item lista">Cantidad Clases : {{ count( $evento->temas ) }} </li>
                              <li class="list-group-item lista">Fecha Inicio : {{  $evento->temas[0]->fecha  }} </li>
                              <li class="list-group-item lista">Fecha Fin : {{  $evento->temas[count( $evento->temas )-1]->fecha  }} </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                </div>
                <div class="div4">
                    <div class="contenido">
                        <div id="miCarrusel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                              @foreach ($evento->temas as $index => $tema)
                                  <div class="carousel-item {{ $index === 0 ? 'active' : '' }}">
                                    <div class="card mb-3" style="max-width: 840px;">
                                        <div class="row g-0">
                                          <div class="col-md-4">
                                            <img src="/storage/icons/icon_Usuario.png" class="img-fluid rounded-start" alt="...">
                                          </div>
                                          <div class="col-md-8">
                                            <div class="card-body">
                                                <h2 class="card-title">{{ $tema->expositor->usuario->name }}</h2>
                                                <p class="card-text">{{ $tema->expositor->biografia }}</p>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                  </div>
                              @endforeach
                            </div>
                            <a class="carousel-control-prev" href="#miCarrusel" role="button" data-slide="prev">
                              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                              <span class="sr-only">Anterior</span>
                            </a>
                            <a class="carousel-control-next" href="#miCarrusel" role="button" data-slide="next">
                              <span class="carousel-control-next-icon" aria-hidden="true"></span>
                              <span class="sr-only">Siguiente</span>
                            </a>
                          </div>
                    </div>
                </div>
                <div class="div5">
                    <div class="cuerpo">
                        <h1>Preguntas Frecuentes</h1>
                    </div>
                </div>
                <div class="div6">
                    <h1>Comentarios</h1>
                    <div class="comentarios">
                        <ul class="list-group">
                            @foreach ( $evento->comentario as $comentario )
                                <li class="list-group-item">
                                    {{ $comentario->participante->usuario->name }} :    {{ $comentario->contenido }}
                                 </li>
                            @endforeach
                        </ul>
                        <button type="button" class="btn btn-primary">Ver mas</button>
                    </div>
                </div>
            </div>

        </div>

      </div>

      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</x-layouts.app>
