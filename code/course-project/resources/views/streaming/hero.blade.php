<x-app-layout>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <p class="text-xl"> {{$hero->name}}</p>


            <p>Movies and shows:</p>
            <div class="relatedMovies">
            @foreach($hero->movies as $movie)
                <div class="movies">
                    <a href="{{ route('movies.show', $movie->id) }}">
                        <img src={{$movie->poster}}></a>
                </div>
            @endforeach
            </div>
        </div>
    </div>
</x-app-layout>
