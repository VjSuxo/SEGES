<x-layouts.app>
    @vite(['resources/css/style_cards.css','resources/css/style_ListaEstado.css'])
    <div class="contenedor">
        <div class="navegadorUsuario">
            <ul class="nav nav-tabs">
              <li class="nav-item">
                <div class="">
                  <a class="nav-link" aria-current="page" href="{{  route('controlador.home') }}">Eventos</a>
                </div>
              </li>
              <li class="nav-item activado">
                <a class="nav-link" href="{{  route('controlador.ambientes') }}">Ambientes</a>
              </li>
            </ul>
          </div>
          <div class="container General border">
            <h1 class="titulo">EVENTO 1</h1>

            <div class="listaEstado">
              <div class="form-check form-check-inline">
                <input class="form-check-input ocupado" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                <label class="form-check-label" for="inlineRadio1"> <p>OCUPADO</p> </label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input reservado" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                <label class="form-check-label" for="inlineRadio2"><p>RESERVADO</p></label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input libre" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                <label class="form-check-label" for="inlineRadio2"><p>LIBRE</p></label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input mantenimiento" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                <label class="form-check-label" for="inlineRadio2"><p>MANTENIMIENTO</p></label>
              </div>
            </div>


            <div class="row row-cols-1 row-cols-md-3 g-4">

              @foreach ($ambientes as $ambiente)
                <div class="col">
                  <div class="card reservado" style="max-width: 18rem;">

                    <div class="card-body">
                        <h5 class="card-title"> {{ $ambiente->nombre }} </h5>
                        <a type="button"  href="{{ route('controlador.ambientesInfo')}}" class="btn btn-secondary">Ver</a>
                    </div>
                    </div>
                </div>
              @endforeach

              


                


              

               


            </div>
          </div>

    </div>
    </div>
</x-layouts.app>
