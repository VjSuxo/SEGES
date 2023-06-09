<x-layouts.app >
    @vite(['resources/css/style_cardsMaterial.css','resources/css/style_inscritos.css'])
    <div class="contenedor">
        <div class="navegadorUsuario">
            <ul class="nav nav-tabs">
              <li class="nav-item">
                <div class="">
                  <a class="nav-link" aria-current="page" href="{{  route('user.home') }}">Perfil</a>
                </div>
              </li>
              <li class="nav-item activado">
                <a class="nav-link" href="{{  route('user.misEventos') }}">Mis Eventos</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="">Crear evento</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="">Gestionar evento</a>
              </li>
            </ul>
        </div>
        <div class="container General">

          <div class="container General">
            <div class="row row-cols-1 row-cols-md-3 g-4">
                @foreach ( $evento->temas as $tema )
                    @foreach ( $tema->contenido as $contenido )
                    <div class="col">
                        <div class="card mb-3" style="max-width: 540px;">
                            <div class="row g-0">
                              <div class="col-md-4 ">
                                <img src="/storage/icons/tarea.png" class="img-fluid rounded-start" alt="...">
                              </div>
                              <div class="col-md-8">
                                <div class="card-body">
                                  <h5 class="card-title">Material Nro {{ $contenido->id }}</h5>
                                  <p class="card-text"> {{ $tema->nombre }} </p>
                                  <p class="card-text"> {{ $contenido->descripcion }} </p>
                                  <a href=" {{ $contenido->archivo }} " class="btn btn-primary">Ver</a>
                                </div>
                              </div>
                            </div>
                          </div>
                    </div>
                    @endforeach
                @endforeach
              </div>
          </div>

        </div>
        </div>

      </div>
</x-layouts>
