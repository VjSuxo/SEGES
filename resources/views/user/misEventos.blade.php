<x-layouts.app >
    @vite(['resources/css/style_usuario.css'])
    <div class="navegadorUsuario">
        <ul class="nav nav-tabs">
          <li class="nav-item">
            <div class="activado">
              <a class="nav-link" aria-current="page" href="{{  route('user.home') }}">Perfil</a>
            </div>
          </li>
          <li class="nav-item">
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
    <div class="cuerpo">
        <div class="tarjeta">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <img src="/storage/icons/icon_user.png" class="bordeImg img-thumbnail rounded-start" alt="">
                    <div class="contenedor-card">
                        <ul class="lista">
                            <li class="lista-Active">
                                <h3>Mi Perfil</h3>
                            </li>
                            <li>
                                <h3>Fotografia</h3>
                            </li>
                            <li>
                                <h3>Seguridad Cuenta</h3>
                            </li>
                            <li>
                                <h3>Cerrar Sesion</h3>
                            </li>
                        </ul>
                    </div>

                </div>
              </div>
        </div>
        <div class="informacion">
            <div class="titulo">
                <h1 class="elemento">MIS EVENTOS</h1>
            </div>

            <div class="row row-cols-1 row-cols-md-2 g-4">

            
  

                <div class="col">
                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="/storage/icons/tarea.png" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Congerso de Musica</h5>
                                    <a href="{{ route('user.evento-index')}}" class="btn">Entrar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

          

                <div class="col">
                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="/storage/icons/tarea.png" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Congerso de Historia</h5>
                                    <a href="{{ route('user.evento-index')}}" class="btn">Entrar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>


</x-layouts>