<x-layouts.app>
    @vite(['resources/css/style_cards.css'])
    <div class="contenedor">
        <div class="navegadorUsuario">
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <div class="activado">
                <a class="nav-link" aria-current="page" href="{{ route('controlador.evento') }}">Infraestructura</a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{{ route('controlador.evento_ambiente') }}">Ambiente</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('controlador.evento_horario') }}">Horario</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ route('controlador.evento_reservas_inscripcion') }}">Reservas | Inscripciones</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ route('controlador.evento_asistencia') }}">Asistencia</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ route('controlador.evento_certificados') }}">Certificados</a>
              </li>
          </ul>
        </div>
        <div class="container General border">
          <h1 class="titulo">EVENTO 1</h1>
          <div class="row row-cols-1 row-cols-md-2 g-4">
            <div class="col">
                <div class="card mb-3 elementos" style="max-width: 540px;">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="/storage/icons/silla-de-escritorio.png" class="img-fluid rounded-start" alt="...">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">Asientos</h5>
                          <input type="number">
                          <br>
                          <button type="button" class="btn btn-primary">Actualizar</button>
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card mb-3 elementos" style="max-width: 540px;">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="/storage/icons/mesa-redonda.png" class="img-fluid rounded-start" alt="...">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">Mesas</h5>
                          <input type="number">
                          <br>
                          <button type="button" class="btn btn-primary">Actualizar</button>
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card mb-3 elementos" style="max-width: 540px;">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="/storage/icons/proyector.png" class="img-fluid rounded-start" alt="...">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">Proyector</h5>
                          <input type="number">
                          <br>
                          <button type="button" class="btn btn-primary">Actualizar</button>
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card mb-3 elementos" style="max-width: 540px;">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="/storage/icons/ordenador-personal.png" class="img-fluid rounded-start" alt="...">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">Computadora</h5>
                          <input type="number">
                          <br>
                          <button type="button" class="btn btn-primary">Actualizar</button>
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
          </div>
        </div>

      </div>
</x-layouts.app>
