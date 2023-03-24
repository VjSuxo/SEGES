<x-layouts.app >
  @vite(['resources/css/style_expositor.css'])
    <div class="contenedor">
        <div class="navegadorUsuario">
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <div class="">
                <a class="nav-link" aria-current="page" href="{{  route('expositor.home') }}">Eventos</a>
              </div>
            </li>
            <li class="nav-item activado">
              <a class="nav-link" href="{{  route('expositor.eventoIndex') }}">InformacionEvento</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{  route('expositor.eventoMaterial') }}">Material</a>
              </li>
          </ul>
        </div>
        <div class="container border bloques">
            <div class="infPrincipal">
                <h1>Lorem ipsim dolor sit Lorem ipsim dolor sitLorem ipsim dolor sit</h1>
                <p>Lorem ipsim dolor sit Lorem ipsim dolor sit Lorem ipsim dolor sit Lorem ipsim dolor sit Lorem ipsim dolor sit Lorem ipsim dolor sit</p>
            </div>
            <div class="infDetallada">
                <h1>Card</h1>
            </div>
            <div class="infVariada">
                <h1>Exposiutro</h1>
            </div>
        </div>

      </div>
</x-layouts>
