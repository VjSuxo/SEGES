<x-layouts.app >
    @vite(['resources/css/style_usuario.css'])
    <div class="navegadorUsuario">
        <ul class="nav nav-tabs">
          <li class="nav-item">
            <div class="activado">
              <a class="nav-link" aria-current="page" href="{{  route('expositor.home') }}">Perfil</a>
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
                <h1 class="elemento">INFORMACION DE PERFIL</h1>
            </div>

            <div class="formu">
                <form action="" class="formulario">

                @include('components.layouts.formulario')

                <!-- Grupo: Titulo -->

                <div class="formulario__grupo" id="grupo__apellidoPaterno">
                    <label for="apellidoPaterno" class="formulario__label">Titulo</label>
                    <div class="formulario__grupo-input">
                        <input type="text" class="formulario__input" name="titulo" id="titulo" placeholder="Desarrolador Software">
                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">El usuario tiene que ser de 4 a 16 letras y solo puede contener constantes y vocales.</p>
                </div>
                <!-- Grupo: Bibliografia -->
                <div class="formulario__grupo" id="grupo__apellidoPaterno">
                    <label for="apellidoPaterno" class="formulario__label">Bibliografia</label>
                    <div class="formulario__grupo-input">
                        <textarea class="formulario__input" name="bibliografia" id="" cols="30" rows="10"></textarea>
                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">El usuario tiene que ser de 4 a 16 letras y solo puede contener constantes y vocales.</p>
                </div>


                 <!-- Grupo: Sitio Web -->

                 <div class="formulario__grupo" id="grupo__apellidoPaterno">
                    <label for="apellidoPaterno" class="formulario__label">Sitio Web</label>
                    <div class="formulario__grupo-input">
                        <input type="text" class="formulario__input" name="enlace_web" id="enlace_Web" placeholder="www.">
                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">El usuario tiene que ser de 4 a 16 letras y solo puede contener constantes y vocales.</p>
                </div>

                 <!-- Grupo: Facebook -->

                 <div class="formulario__grupo" id="grupo__apellidoPaterno">
                    <label for="apellidoPaterno" class="formulario__label">Facebook</label>
                    <div class="formulario__grupo-input">
                        <input type="text" class="formulario__input" name="enlace_facebok" id="enlace_facebok" placeholder="Desarrolador Software">
                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">El usuario tiene que ser de 4 a 16 letras y solo puede contener constantes y vocales.</p>
                </div>

                 <!-- Grupo: Linkedin -->

                 <div class="formulario__grupo" id="grupo__apellidoPaterno">
                    <label for="apellidoPaterno" class="formulario__label">Linkedin</label>
                    <div class="formulario__grupo-input">
                        <input type="text" class="formulario__input" name="enlace_linkedin" id="enlace_linkedin" placeholder="Desarrolador Software">
                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">El usuario tiene que ser de 4 a 16 letras y solo puede contener constantes y vocales.</p>
                </div>
                 <!-- Grupo: Youtube -->

                 <div class="formulario__grupo" id="grupo__apellidoPaterno">
                    <label for="apellidoPaterno" class="formulario__label">Youtube</label>
                    <div class="formulario__grupo-input">
                        <input type="text" class="formulario__input" name="enlace_yotube" id="enlace_yotube" placeholder="Desarrolador Software">
                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">El usuario tiene que ser de 4 a 16 letras y solo puede contener constantes y vocales.</p>
                </div>
                 <!-- Grupo: Instagram -->

                 <div class="formulario__grupo" id="grupo__apellidoPaterno">
                    <label for="apellidoPaterno" class="formulario__label">Instagram</label>
                    <div class="formulario__grupo-input">
                        <input type="text" class="formulario__input" name="enlace_instagram" id="enlace_instagram" placeholder="Desarrolador Software">
                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">El usuario tiene que ser de 4 a 16 letras y solo puede contener constantes y vocales.</p>
                </div>



                </form>
            </div>
        </div>
    </div>


</x-layouts>
