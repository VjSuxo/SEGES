<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ambiente extends Model
{
    protected $fillable = [
        'user_id',
        'evento_id',
        'horario_id',
        'nombre',
        'capacidad',
        'estado',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function evento()
    {
        return $this->belongsTo(Evento::class);
    }

    public function horario()
    {
        return $this->morphToMany(Horario::class);
    }
}
