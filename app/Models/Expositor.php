<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Expositor extends Model
{
    protected $table = 'expositores';
    protected $fillable = [
        'nombre_empresa',
        'biografia',
        'url',
    ];

    public function usuario()
    {
        return $this->belongsTo(User::class);
    }



}
