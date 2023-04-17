<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class Evento extends Model
{
    use HasFactory;
    protected $table = 'eventos';
    protected $fillable = [
        'nombre',
        'descripcion',
        'tipo',
        'controlador_id',
    ];

    public function certificado()
    {
        return $this->hasOne(Certificado::class);
    }

    public function comentario()
    {
        return $this->hasMany(Comentario::class);
    }

    public function temas()
    {
        return $this->hasMany(Tema::class);
    }


    public function participantes()
    {
        return $this->belongsToMany(Usuario::class)->withPivot('asistio');
    }

    public function controlador()
    {
        return $this->belongsTo(Controlador::class);
    }

    public function eventoParticipante()
    {
        return $this->hasMany(eventoParticipante::class);
    }
    public function asistencias()
    {
        return $this->hasMany(Asistencia::class);
    }



}
