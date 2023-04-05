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
                    <th scope="col">Cantidad de Clases</th>
                    <th scope="col">Opcion</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($eventos as $evento)
                    <tr>
                      <th scope="row"> {{ $evento->id }} </th>
                      <td> {{ $evento->nombre }} </td>
                      <td> {{ count($evento->temas) }} </td>
                      <td><a type="button"  href="{{ route('controlador.evento') }}" class="btn btn-primary">Ver</a></td>
                    </tr>
                  @endforeach
                  

                </tbody>
              </table>
        </div>

        </div>

      </div>
</x-layouts>
