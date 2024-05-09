<x-app-layout>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            @foreach($movies as $movie)
                <h1 class="font-semibold text-xl text-gray-800 leading-tight">
                    {{$movie->title}}
                </h1>
                <p>{{$movie->description}}</p>

            @endforeach
        </div>
    </div>
</x-app-layout>
