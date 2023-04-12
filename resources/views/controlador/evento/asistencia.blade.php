<x-layouts.app>
    <div class="contenedor">
        <div class="navegadorUsuario">
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <a class="nav-link" href="{{ route('controlador.home') }}">Otros Eventos</a>
            </li>
          <li class="nav-item">
            <div class="">
              <a class="nav-link " aria-current="page" href="{{ route('controlador.evento', $evento->id) }}">Informacion</a>
            </div>
          </li>
            <li class="nav-item">
              <a class="nav-link" href="{{ route('controlador.evento_reservas_inscripcion',$evento->id) }} ">Reservas | Inscripciones</a>
            </li>
            <li class="nav-item">
              <a class="nav-link activado" href="{{ route('controlador.evento_asistencia',$evento->id) }}">Asistencia</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{{ route('controlador.evento_certificados',$evento->id) }}">Certificados</a>
            </li>
          </ul>
        </div>
        <div class="container General">
            <table class="table">
                <thead>
                  <tr>
                    <th scope="col">CI</th>
                    <th scope="col">Role</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido</th>
                    <th scope="col">Fecha Nacimiento</th>
                    <th scope="col">Correo</th>
                    <th scope="col">Genero</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>controlador</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>2000</td>
                    <td>@mdo</td>
                    <td>Desconocido</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>usuario</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>2000</td>
                    <td>@mdo</td>
                    <td>Desconocido</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>admin</td>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>2000</td>
                    <td>@mdo</td>
                    <td>Desconocido</td>
                  </tr>
                </tbody>
              </table>
        </div>
    </div>






</x-layouts.app>
