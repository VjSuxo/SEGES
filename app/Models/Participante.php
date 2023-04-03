<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Participante extends Model
{
    protected $table = 'participantes';
    protected $fillable = [
        'nivel_estudios',
        'profesion',
    ];

    public function usuario()
    {
        return $this->belongsTo(Usuario::class);
    }
}
