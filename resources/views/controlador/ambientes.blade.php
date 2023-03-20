<x-layouts.app>
    <div class="contenedor">
        <div class="navegadorUsuario">
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <div class="">
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
              <li class="nav-item activado">
                <a class="nav-link" href="{{ route('controlador.evento_certificados') }}">Certificados</a>
              </li>
          </ul>


        </div>
    </div>
</x-layouts.app>
