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

    function searchContent(Request $request): View{
        $query = $request->input('query');

        $movies = Movie::where('title', 'like', '%' . $query . '%')->get();
        $shows = Show::where('title', 'like', '%' . $query . '%')->get();

        return view('dashboard', [
            'movies' => $movies,
            'shows' => $shows,
            'query' => $query,
        ]);
    }
}
