<x-layouts.app>
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
              <a class="nav-link" href="{{ route('controlador.evento_ResIns',$evento->id) }} ">Reservas | Inscripciones</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{{ route('controlador.evento_asistencia',$evento->id) }}">Asistencia</a>
            </li>
            <li class="nav-item">
              <a class="nav-link activado" href="{{ route('controlador.evento_certificados',$evento->id) }}">Certificados</a>
            </li>
          </ul>
        </div>

        <div class="container General">
          <a class="btn btn-primary" href="{{ route('controlador.GenerarPDF') }}"> Generar Certificados </a>
            <table class="table">
                <thead>
                  <tr>
                    <th scope="col">CI</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido</th>
                    <th scope="col">Fecha Nacimiento</th>
                    <th scope="col">Correo</th>

                  </tr>
                </thead>
                <tbody>

                  <tr>
                    <th scope="row">3</th>
                    <td>admin</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>2000</td>
                    <td>@mdo</td>
                    <th scope="col"> <a href="{{ route('controlador.GenerarPDF') }}"> Oli</a> </th>
                  </tr>
                </tbody>
              </table>
        </div>
    </div>
</x-layouts.app>
