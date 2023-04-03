<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ambiente extends Model
{
    use HasFactory;
    protected $table = 'ambientes';
    protected $fillable = [
        'nombre',
        'capacidad',
        'estado',
        'controlador_id',
    ];

    public function controlador()
    {
        return $this->belongsTo(Controlador::class);
    }

    public function infraestructura()
    {
        return $this->belongsTo(Controlador::class);
    }

}
