<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">
        Texas Adlister</a>
        <button class="navbar-toggler navbar-toggler-right collapsed" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span id="navbar-icon" class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav nav-fill w-100">
                    <li class="nav-item">
                        <a class="nav-link" href="/home">Home</a>
                    </li>
                    <li class="nav-item">
                    <form class="form-inline my-lg-0" action="/ads/index" method="POST">
                        <select class="custom-select mr-sm-2" id="type-select" name="type-select">
                            <option selected>Choose...</option>
                            <option value="1">Buy</option>
                            <option value="2">Sell</option>
                            <option value="3">Housing</option>
                            <option value="4">Jobs</option>
                        </select>
                        <select class="custom-select mr-sm-2" id="location-select" name="location-select">
                            <option selected>Location</option>
                            <option value="Austin">Austin</option>
                            <option value="Dallas">Dallas</option>
                            <option value="Houston">Houston</option>
                            <option value="SanAntonio">San Antonio</option>
                        </select>
                        <button class="btn btn-outline-warning my-sm-0" type="submit">Search</button>
                    </form>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/ads/create">+ Create Ad</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/login">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/register">Register</a>
                    </li>
                </ul>
        </div>
    </div>
</nav>
