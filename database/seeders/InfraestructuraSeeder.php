<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Evento;
use App\Models\Controlador;
use App\Models\Infraestructura;

class InfraestructuraSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $evento = Evento::where('nombre','lectura Mediaval')->firstOrFail();
        $tema =  $evento->temas()->where('nombre', 'Introducción')->firstOrFail();
        $controlador = Controlador::where('usuario_id', 32)->first();
        Infraestructura::create([
            'nombre' => 'Amarillo',
            'capacidad'=> 50,
            'estado' => 'ocupado',
            'tema_id' => $tema->id,
            'controlador_id' => $controlador->id,
        ]);
    }
}
