<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configurator | Login</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="{{ asset('assets/dist/css/login.css') }}">
    <link rel="shortcut icon" href="{{ asset('assets/dist/img/logo.png') }}" type="image/x-icon">
</head>

<body>

    <div class="container" style="position: absolute;
          top: 50%;
          left: 50%;
          transform: translate(-50%, -50%);
          padding: 10px;">
        <div class="d-flex justify-content-center">
            <div class="panel border bg-white">
                @yield('panel-body')
            </div>
        </div>
    </div>

    <script>
        function ToogleClass(eye, pass) {
            if ($("#" + eye).hasClass('fa-lock')) {
                $("#" + eye).removeClass('fa-lock').addClass('fa-unlock');
                $("#" + pass).attr("type", "text")
            } else if ($("#" + eye).hasClass('fa-unlock')) {
                $("#" + eye).removeClass('fa-unlock').addClass('fa-lock');
                $("#" + pass).attr("type", "password")
            }
        }

        $("#pass , #conf_pass").on("input", function() {
            if ($("#pass").val() != $("#conf_pass").val()) {
                $("#conf_pass").parent().addClass("border-danger");
            } else if ($("#conf_pass").val() != $("#pass").val()) {
                $("#pass").parent().addClass("border-danger");
            } else {
                $("#conf_pass").parent().removeClass("border-danger")
            }
        })


        $(document).keypress(function(event) {
            if (event.keyCode === 13) {
                $('#login_btn').click()
            }
        });
    </script>

</body>

</html>
