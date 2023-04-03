<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class eventoParticipante extends Model
{
    use HasFactory;
    protected $table = 'evento_participantes';
    protected $fillable = [
        'evento_id',
        'participante_id',
        'inscrito',
        'reservado',
    ];

    public function participantes()
    {
        return $this->belongsToMany(Participante::class);
    }

    public function eventos()
    {
        return $this->belongsToMany(Evento::class);
    }

}
