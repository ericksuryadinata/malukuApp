<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample08"
        aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample08">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="btn btn-primary nav-link mr-3" href="{{route('home.index')}}">Home</a>
            </li>
            <li class="nav-item">
                <a class="btn btn-primary nav-link mr-3" href="{{route('peta.index')}}">Peta</a>
            </li>
            <li class="nav-item">
                <a class="btn btn-primary nav-link mr-3" href="{{route('profil.index')}}">Profil</a>
            </li>
            <li class="nav-item">
                <a class="btn btn-primary nav-link mr-3" href="{{route('search.index')}}">Search</a>
            </li>
        </ul>
    </div>
</nav>