<!doctype html>
<html lang="en">

<head>
    @include('layouts.header')
</head>

<body class="sidebar-mini layout-fixed sidebar-collapse" style="background: #f4f6f9; overflow-x: hidden;"
    data-new-gr-c-s-check-loaded="14.1111.0" data-gr-ext-installed style="height: auto;">
    @include('layouts.nav')
    @include('layouts.sidebar')


    <div class="except content-wrapper Main bg-transparent" style = "margin-top: 2.5%;">

        <div class="except content-header bg-transparent">
            <div class="except container-fluid bg-transparent">
                <div class="except row mb-2 bg-transparent">
                    <div class="except col-sm-6 v">
                        <!-- <h1 class="m-0"></h1> -->
                    </div><!-- /.col -->
                    <div class="except col-sm-6 bg-transparent">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="/">Home</a></li>
                            <li class="breadcrumb-item active">
                              @yield("contentHeader")
                            </li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>

        @yield('content-wrapper')
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    @include('layouts.footer')
</body>

</html>
