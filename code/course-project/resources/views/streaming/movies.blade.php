<x-app-layout>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <form action="{{route('search')}}">
                <input type="text" name="query" placeholder="Search movie or show" value="{{request('query')}}">
                <button type="submit" class="custom-button">
                    Search
                </button>
            </form>
            <br>
            <!-- Start main content -->
            <div class="streamingContent">
                @foreach($movies as $movie)
                    <a href="{{ route('movies.show', $movie->id) }}">
                        <img src={{$movie->poster}}  alt="{{$movie->title}}"></a>
                @endforeach
            </div>
        </div>
    </div>
</x-app-layout>
