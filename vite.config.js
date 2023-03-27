import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/sass/app.scss',
                'resources/js/app.js',
                'resources/css/style.css',
                'resources/css/style_texto.css',
                'resources/css/style_ListaEstado.css',
                'resources/css/style_inscritos.css',
                'resources/css/style_Inputs.css',
                'resources/css/style_cards.css',
                'resources/css/style_calendar.css',
                'resources/css/style_cardsMaterial.css',
                'resources/css/style_login.css',
                'resources/css/style_register.css',
                'resources/css/style_expositor.css',
                'resources/css/style_usuario.css',
                'resources/js/calendar.js',
            ],
            refresh: true,
        }),
    ],
});
