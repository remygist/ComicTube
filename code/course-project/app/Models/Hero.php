<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hero extends Model
{
    function movies()
    {
        return $this->belongsToMany(Movie::class, 'hero_movie');
    }
}
