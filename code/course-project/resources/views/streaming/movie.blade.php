<x-app-layout>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <h1 class="font-semibold text-xl text-gray-800 leading-tight">{{ $movie->title }}</h1>
            <div class="movie-section">
                <iframe width="960px" height="540px" src="{{ $movie->videoUrl }}"></iframe>
            </div>

            <div class="tabs-section">
                <div class="tabs">
                    <button class="tablinks" onclick="openTab(event, 'overview')"><h2
                            class="font-semibold text-xl text-gray-800 leading-tight">Overview</h2></button>
                    <button class="tablinks" onclick="openTab(event, 'cast')"><h2
                            class="font-semibold text-xl text-gray-800 leading-tight">Cast</h2></button>
                    <button class="tablinks" onclick="openTab(event, 'heroes')"><h2
                            class="font-semibold text-xl text-gray-800 leading-tight">Heroes</h2></button>
                </div>

                <hr>

                <div id="overview" class="tabcontent" style="display: block;">
                    <p>{{ $movie->description }}</p>
                </div>

                <div id="cast" class="tabcontent" style="display: none;">
                    @foreach($movie->actors as $actor)
                        <p>{{ $actor->name }}</p>
                        <img src={{$actor->image}}>
                    @endforeach
                </div>

                <div id="heroes" class="tabcontent" style="display: none;">
                    @foreach($movie->heroes as $hero)
                        <p>{{ $hero->name }}</p>
                    <p>{{$hero->originComics}}</p>
                        <img src={{$hero->comicImage}}>
                    @endforeach
                </div>
            </div>
        </div>
    </div>

    <script>
        function openTab(evt, tabName) {
            let tabcontents = document.getElementsByClassName("tabcontent");
            for (let i = 0; i < tabcontents.length; i++) {
                tabcontents[i].style.display = "none";
            }
            let tablinks = document.getElementsByClassName("tablinks");
            for (let i = 0; i < tablinks.length; i++) {
                tablinks[i].classList.remove("active");
            }
            document.getElementById(tabName).style.display = "block";
            evt.currentTarget.classList.add("active");
        }
    </script>
</x-app-layout>
