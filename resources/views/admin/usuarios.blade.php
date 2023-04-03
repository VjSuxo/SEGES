<x-layouts.app >
    <div class="navegadorUsuario">
        <ul class="nav nav-tabs">
          <li class="nav-item">
            <div class="">
              <a class="nav-link" aria-current="page" href="{{route('admin.home')}}">Inicio</a>
            </div>
          </li>
          <li class="nav-item activado">
            <a class="nav-link" href="{{ route('admin.usuarios')}}">Usuarios</a>
          </li>
          <li class="nav-item">
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
              @foreach ($usuarios as $usuario)
                <tr>
                    <th scope="row">{{$usuario->id}}</th>
                    <td>{{$usuario->role}}</td>
                    <td>{{$usuario->name}}</td>
                    <td>{{$usuario->apellido_Pat}} {{$usuario->apellido_Mat}} </td>
                    <td>{{$usuario->anio_Nac}}</td>
                    <td>{{$usuario->email}}</td>
                    <td>{{$usuario->genero}}</td>
                </tr>
              @endforeach
            </tbody>
          </table>
    </div>
</x-layouts>
