<x-app-layout>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <br>
            <!-- Start main content -->
            <p>{{$hero->name}}</p>

            @foreach($hero->movies as $movie)
                <div class="movies">
                    <a href="{{ route('movies.show', $movie->id) }}">
                        <img src={{$movie->poster}}></a>
                </div>
            @endforeach
        </div>
    </div>
</x-app-layout>
