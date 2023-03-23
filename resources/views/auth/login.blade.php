<x-layouts.app >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    @vite(['resources/css/style_login.css'])
 <!--Contenido Login-->
 <div class="container wrapper">
    <span class="icon-close">
        <ion-icon name="close-circle-outline"></ion-icon>
    </span>
    <div class="form-box login">
        <h2>Login</h2>
        <form method="POST" action="{{ route('login') }}">
            @csrf
            <div class="input-box">
                <span class="icon"><ion-icon name="mail-outline"></ion-icon></span>
                <input id="email" name="email" type="email" required>
                <label>Email</label>
            </div>
            <div class="input-box">
                <span class="icon"><ion-icon name="lock-open-outline"></ion-icon></span>
                <input id="password" name="password" type="password" required>
                <label >Password</label>
            </div>
           <div class="remember-forgot">
            <label><input type="checkbox">Remember me</label>
            <a href="#">Forgot Password?</a>
           </div>
           <button type="submit"class="btn">Iniciar Sesión</button>
           <div class="login-register">
            <p>Don't have an account? <a href="register.html"class="register-link">Register</a></p>
           </div>

        </form>
    </div>
</div>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</x-layouts>
