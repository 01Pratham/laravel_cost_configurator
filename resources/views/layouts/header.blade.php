<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="csrf-token" content="{{ csrf_token() }}">
{{-- Stylesheets --}}
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
{{-- @vite([
    'resources/assets/dist/css/adminlte.min.css',
    'resources/assets/plugins/fontawesome-free/css/all.min.css',
    'resources/assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css',
    'resources/assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css',
    'resources/assets/plugins/jqvmap/jqvmap.min.css',
    'resources/assets/dist/css/style.css',
    'resources/assets/plugins/jquery-ui/jquery-ui.min.js',
 'resources/assets/plugins/bootstrap/js/bootstrap.bundle.min.js',
 'resources/assets/dist/js/adminlte.js',
 'resources/assets/dist/js/demo.js',
 'resources/assets/dist/js/main.js',
 'resources/assets/dist/js/jquery.serializeToJSON.min.js'
 ]) --}}


{{-- @vite('resources/assets/dist/js/app.js') --}}

<link rel="stylesheet" href="{{ asset('assets/dist/css/adminlte.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/plugins/fontawesome-free/css/all.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/plugins/jqvmap/jqvmap.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/dist/css/style.css') }}">


<script src="{{ asset('assets/plugins/jquery-ui/jquery-ui.min.js') }}"></script>
<script src="{{ asset('assets/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ asset('assets/dist/js/adminlte.js') }}"></script>
<script src="{{ asset('assets/dist/js/demo.js') }}"></script>
<script src="{{ asset('assets/dist/js/main.js') }}"></script>
<script src="{{ asset('assets/dist/js/jquery.serializeToJSON.min.js') }}"></script>
