<x-layouts.app>
    @vite(['resources/css/style_cards.css','resources/css/style_ListaEstado.css'])
    <div class="contenedor">
        <div class="navegadorUsuario">
            <ul class="nav nav-tabs">
              <li class="nav-item">
                <div class="">
                  <a class="nav-link" aria-current="page" href="/administrador/index.html">Eventos</a>
                </div>
              </li>
              <li class="nav-item activado">
                <a class="nav-link" href="/administrador/usuario.html">Ambientes</a>
              </li>
            </ul>
        </div>

        <div class="General border">
            <h1 class="titulo">Ambiente 1</h1>
            <div class="row align-items-start">
                <div class="col m-5 border">
                    <h1 class="titulo">Agenda</h1>
                    <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Horario</th>
                            <th scope="col">Dia</th>
                            <th scope="col">Mes</th>
                            <th scope="col">Año</th>
                            <th scope="col">Tiempo</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>8:00 a 10:00</td>
                            <td>Lunes 21</td>
                            <td>Marzo</td>
                            <td>2023</td>
                            <td>2 horas</td>
                          </tr>
                          <tr>
                            <th scope="row">1</th>
                            <td>8:00 a 10:00</td>
                            <td>Lunes 21</td>
                            <td>Marzo</td>
                            <td>2023</td>
                            <td>2 horas</td>
                          </tr>
                          <tr>
                            <th scope="row">1</th>
                            <td>8:00 a 10:00</td>
                            <td>Lunes 21</td>
                            <td>Marzo</td>
                            <td>2023</td>
                            <td>2 horas</td>
                          </tr>
                        </tbody>
                    </table>
                </div>

                <div class="col m-5 border">
                    <h1 class="titulo">Infraestructura</h1>
                    <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Tipo</th>
                            <th scope="col">Cantidad</th>
                            <th scope="col">Editar</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>Mesa</td>
                            <td>Mueble</td>
                            <td>10</td>
                            <td><a type="button"  href="#" class="btn btn-primary">Editar</a></td>
                          </tr>
                          <tr>
                            <th scope="row">1</th>
                            <td>Mesa</td>
                            <td>Mueble</td>
                            <td>10</td>
                            <td><a type="button"  href="#" class="btn btn-primary">Editar</a></td>
                          </tr>
                          <tr>
                            <th scope="row">1</th>
                            <td>Mesa</td>
                            <td>Mueble</td>
                            <td>10</td>
                            <td><a type="button"  href="#" class="btn btn-primary">Editar</a></td>
                          </tr>
                        </tbody>
                    </table>
                </div>

            </div>

     </div>

    </div>
</x-layouts.app>
