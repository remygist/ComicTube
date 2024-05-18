<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    function actors()
    {
        return $this->belongsToMany(Actor::class);
    }

    function heroes()
    {
        return $this->belongsToMany(Hero::class);
    }
}
