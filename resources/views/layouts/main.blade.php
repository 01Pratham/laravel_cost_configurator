<!doctype html>
<html lang="en">
  <head>
    @include('layouts.header')
  </head>
  <body class="sidebar-mini layout-fixed sidebar-collapse" style="background: #f4f6f9; overflow-x: hidden;" data-new-gr-c-s-check-loaded="14.1111.0" data-gr-ext-installed style="height: auto;" >
    @include('layouts.nav')
    @include('layouts.sidebar')

    <div class="except content-wrapper Main bg-transparent" style = "margin-top: 2.5%;">
      @yield('content-wrapper')
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->




    @include('layouts.footer')
  </body>
</html>