<x-layouts.app >
    <div class="contenedor">
        <div class="navegadorUsuario">
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <div class="activado">
                <a class="nav-link" aria-current="page" href="{{  route('controlador.home') }}">Eventos</a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{{  route('controlador.ambientes') }}">Ambientes</a>
            </li>
          </ul>
        </div>
        <div class="container General">
          <div class="container General">
            <table class="table">
                <thead>
                  <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Capacidad</th>
                    <th scope="col">Estado</th>
                    <th scope="col">Cantidad de Clases</th>
                    <th scope="col">Opcion</th>
                  </tr>
                </thead>
                <tbody>

                  <tr>
                    <th scope="row">1</th>
                    <td>Evento 1</td>
                    <td>50</td>
                    <td>Reserva</td>
                    <td>10</td>
                    <td><a type="button"  href="{{ route('controlador.evento') }}" class="btn btn-primary">Ver</a></td>
                  </tr>

                </tbody>
              </table>
        </div>

        </div>

      </div>
</x-layouts>
