<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Actor extends Model
{
    function movies()
    {
        return $this->belongsToMany(Movie::class, 'cast');
    }
}
