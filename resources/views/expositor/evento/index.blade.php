<x-layouts.app >
  @vite(['resources/css/style_expositor.css'])
    <div class="contenedor">
        <div class="navegadorUsuario">
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <div class="">
                <a class="nav-link" aria-current="page" href="{{  route('expositor.home') }}">Eventos</a>
              </div>
            </li>
            <li class="nav-item activado">
              <a class="nav-link" href="{{  route('expositor.eventoIndex') }}">InformacionEvento</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{  route('expositor.eventoMaterial') }}">Material</a>
              </li>
          </ul>
        </div>
        <div class="container General">
          <div class="cabecera">
            <div class="contenido">
              <h1>Nombre dek ,,,,</h1>
              <p></p>
            </div>
            <div class="card" style="width: 18rem;">
              <img src="/storage/icons/icon_Usuario.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Editar Informacion</a>
              </div>
            </div>
          </div>
          <div class="cuerpo">
            
          </div>
        </div>

      </div>
</x-layouts>
