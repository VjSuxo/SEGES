<x-layouts.app >
    @vite(['resources/css/style_usuario.css'])
    <div class="navegadorUsuario">
        <ul class="nav nav-tabs">
          <li class="nav-item">
            <div class="activado">
              <a class="nav-link" aria-current="page" href="{{  route('user.home') }}">Perfil</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{  route('user.misEventos') }}">Mis Eventos</a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="">Crear evento</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="">Gestionar evento</a>
          </li>
        </ul>
    </div>
    <div class="cuerpo">
        <div class="tarjeta">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <img src="/storage/icons/icon_user.png" class="bordeImg img-thumbnail rounded-start" alt="">
                    <div class="contenedor-card">
                        <ul class="lista">
                            <li class="lista-Active">
                                <h3>Mi Perfil</h3>
                            </li>
                            <li>
                                <h3>Fotografia</h3>
                            </li>
                            <li>
                                <h3>Seguridad Cuenta</h3>
                            </li>
                            <li>
                                <h3>Cerrar Sesion</h3>
                            </li>
                        </ul>
                    </div>

                </div>
              </div>
        </div>
        <div class="informacion">
            <div class="titulo">
                <h1 class="elemento">CONGRESO HISTORIA</h1>
            </div>

            <div class="contenido">
            <div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-tabs card-header-tabs">
      <li class="nav-item">
        <a class="nav-link active" aria-current="true" href="#">Presentacion</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Programa</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled">Inscripcion</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled">Contacto</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
    <h5 class="card-title">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fuga accusamus aspernatur deserunt unde sed eos explicabo alias</h5>
    <div class="miniLista d-flex align-items-start" >
        <ul>
            <li class="d-flex align-items-start">Fecha Inicio : 16/11/2021</li>
            <li class="d-flex align-items-start">Fecha Fin : 19/11/2021</li>
            <li class="d-flex align-items-start">Hora Inicio : 8:00 am</li>
            <li class="d-flex align-items-start">Lugar :Universidad</li>
        </ul>
    </div>
    <div class="portada">
        <img src="/storage/imagenes/evento1.jpg" class="img-fluid" alt="">
    </div>
    <br>
    <div class="informacionContenido">
        <p class="text-start">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia laboriosam provident cumque libero sed illum ab sint enim atque, distinctio error maiores quo magnam ratione. Dolores dolor minus repellat doloribus?
        Nobis iusto repellat voluptate! Excepturi qui similique sequi facilis, neque iste praesentium incidunt, laudantium, ex ut dolores maiores aut eos delectus porro soluta explicabo veniam? Exercitationem voluptates iste similique expedita.
        Laudantium qui quis odio, dolor itaque culpa iusto, nostrum aperiam amet excepturi veniam nobis soluta, quo provident cumque! Aspernatur ipsa provident dolores temporibus beatae incidunt alias vero tempore deserunt ex.
        Asperiores fugit eos adipisci debitis qui non possimus, modi odit, in iste sint labore veniam beatae cupiditate aperiam voluptate itaque quis! Maxime nostrum eligendi earum quae architecto modi, exercitationem numquam!
        Et nihil nulla similique dolorem, voluptatibus sequi delectus necessitatibus quos id ea nemo minus sapiente voluptatum temporibus ratione culpa non. Qui amet minima porro inventore architecto consequuntur quidem laudantium accusamus.</p>
    </div>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
            </div>

            
  


          

        </div>
    </div>


</x-layouts>