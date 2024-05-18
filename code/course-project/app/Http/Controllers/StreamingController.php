<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use App\Models\Show;
use Illuminate\Http\Request;
use Illuminate\View\View;

class StreamingController extends Controller
{
    function index(): View
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

    function showMovie($id): View{
        $movie = Movie::with(['actors','heroes'])->findOrFail($id);
        return view('streaming.movie', ['movie' => $movie]);
    }

    function indexMovies(): View
    {
        $movies = Movie::all();
        return view('streaming.movies',[
            'movies' => $movies
        ]);
    }

    function indexShows(): View
    {
        $shows = Show::all();
        return view('streaming.shows',[
            'shows' => $shows
        ]);
    }

    function showShow($id): View
    {
        $show = Show::with(['actors','heroes'])->findOrFail($id);
        return view('streaming.show', ['show' => $show ]);
    }


}
