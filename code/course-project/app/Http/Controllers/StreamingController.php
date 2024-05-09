<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use App\Models\Show;
use Illuminate\Http\Request;
use Illuminate\View\View;

class StreamingController extends Controller
{
    function displayMovies():View
    {
        $movies = Movie::all();
        return \view('dashboard',['movies' => $movies]);
    }

    function displayShows():View
    {
        $shows = Show::all();
        return view('dashboard',['shows' => $shows]);
    }
}
