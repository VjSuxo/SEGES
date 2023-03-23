<x-layouts.app>
    @vite(['resources/css/style_inscritos.css','resources/css/style_ListaEstado.css'])
    <div class="contenedor">
        <div class="navegadorUsuario">
          <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link" href="{{ route('controlador.home') }}">Otros Eventos</a>
              </li>
            <li class="nav-item">
              <div>
                <a class="nav-link" aria-current="page" href="{{ route('controlador.evento') }}">Infraestructura</a>
              </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('controlador.evento_horario') }}">Horario</a>
              </li>
              <li class="nav-item activado"">
                <a class="nav-link" href="{{ route('controlador.evento_reservas_inscripcion') }}">Reservas | Inscripciones</a>
              </li>
              <li class="nav-item ">
                <a class="nav-link" href="{{ route('controlador.evento_asistencia') }}">Asistencia</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ route('controlador.evento_certificados') }}">Certificados</a>
              </li>
          </ul>
        </div>

        <div class="container General">
            <div class="listaEstado">
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                  <label class="form-check-label" for="inlineRadio1"> <p>RESERVAS</p> </label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                  <label class="form-check-label" for="inlineRadio2"><p>INSCRIPCION</p></label>
                </div>
              </div>

            <div class="lado">
                <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">CI</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Numero</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>controlador</td>
                        <td>Mark</td>
                        <td>Otto</td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>usuario</td>
                        <td>Mark</td>
                        <td>Otto</td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>admin</td>
                        <td>Mark</td>
                        <td>Otto</td>
                      </tr>
                    </tbody>
                  </table>
                <div class="botones">
                    <div class="lado">
                        <h4 class="subTexto">Inscripcion :</h4>
                    <button type="button" class="btn btn-primary">Finalizar </button>
                    </div>
                    <div class="lado">
                        <h4 class="subTexto">Reserva :</h4>
                    <button type="button" class="btn btn-primary">Finalizar </button>
                    </div>
                </div>
            </div>

            </div>
    </div>
</x-layouts.app>
