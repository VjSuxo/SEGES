<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Infraestructura extends Model
{
    use HasFactory;
    protected $table = 'infraestructuras';
    protected $fillable = [
        'ambiente_id',
        'tema_id',
    ];

    public function tema()
    {
        return $this->belongsTo(Tema::class);
    }

    public function reservas()
    {
        return $this->hasMany(Reserva::class);
    }

    public function ambiente()
    {
        return $this->belongsToMany(Ambiente::class);
    }



}

