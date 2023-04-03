<x-layouts.app >
    <div class="navegadorUsuario">
        <ul class="nav nav-tabs">
          <li class="nav-item">
            <div class="">
              <a class="nav-link" aria-current="page" href="{{route('admin.home')}}">Inicio</a>
            </div>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="{{ route('admin.usuarios')}}">Usuarios</a>
          </li>
          <li class="nav-item activado">
            <a class="nav-link"  href="{{ route('admin.eventos') }}">Eventos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link"  href="{{ route('admin.pagina_web') }}">Pagina Web</a>
          </li>
          <li class="nav-item">
            <a class="nav-link"  href="{{  route('admin.ambiente') }}">Ambiente</a>
          </li>
        </ul>
    </div>
    <div class="container General">
        <table class="table">
            <thead>
              <tr>
                <th scope="col">Id</th>
                <th scope="col">Nombre</th>
                <th scope="col">Descripcion</th>
                <th scope="col">tipo</th>
                <th scope="col">Capacidad</th>
                <th scope="col">Cantidad de Clases</th>
                <th scope="col">Ver Temas</th>
                <th scope="col">Ver Contenido</th>
              </tr>
            </thead>
            <tbody>
                @foreach ( $eventos as $evento )
                <tr>
                    <th scope="row">{{$evento->id}}</th>
                    <th>{{$evento->nombre}}</th>
                    <th>{{$evento->descripcion}}</th>
                    <th>{{$evento->tipo}}</th>
                </tr>
                @endforeach
            </tbody>
          </table>
    </div>

</x-layouts>
