<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use App\Models\Show;
use Illuminate\Http\Request;
use Illuminate\View\View;

class StreamingController extends Controller
{
    function displayContent(): View
    {
        // Retrieve data for movies and shows
        $movies = Movie::all();
        $shows = Show::all();

        // Return the dashboard view with movies and shows data
        return view('dashboard', [
            'movies' => $movies,
            'shows' => $shows,
        ]);
    }
}
