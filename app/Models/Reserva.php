<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reserva extends Model
{
    protected $table = 'reservas';
    protected $fillable = ['fecha', 'hora_inicio', 'hora_fin', 'infraestructura_id','id_tema'];

    public function infraestructura()
    {
        return $this->belongsTo('App\Models\Infraestructura');
    }

    public function temas()
    {
        return $this->belongsTo(Tema::class);
    }
}
