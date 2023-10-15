@extends('layouts.login_main')
@section('panel-body')

    <div class="panel-heading">
        <!-- <img src="asset/logo.jpg" alt=""> -->
        <h3 class="pt-3 font-weight-bold">Login</h3>
    </div>
    <div class="panel-body p-3">
        <form action="/Home" method="POST">
            <div class="errors text-danger">
                @error('invalidUser')
                    {{ "* ".$message }}
                @enderror
            </div>
            @csrf
            <div class="form-group py-2">
                <div class="errors text-danger">
                    @error('Username')
                        {{ "* ".$message }}
                    @enderror
                </div>
                <div class="input-field">
                    <span class="far fa-user p-2"></span>
                    <input type="text" placeholder="Username" name='Username'>
                </div>
            </div>
            <div class="form-group py-1 pb-2">
                <div class="errors text-danger">

                    @error('Password')
                        {{ "* ".$message }}
                    @enderror
                </div>
                <div class="input-field">
                    <span class="fas fa-lock px-2" id="eye" onclick="ToogleClass($(this).prop('id') , 'pass')"></span>
                    <input type="password" placeholder="Password" id="pass" name='Password' autocomplete="on">
                    <!--    <span class="far fa-eye-slash " id="eye"></span>-->
                </div>

            </div>
            <div class="form-inline">
                <a href="/ForgetPassword" id="forgot" class="font-weight-bold">Forgot password ?</a>
            </div>
            <input type="submit" value="Login" class="btn btn-primary btn-block mt-3" name="login_btn" id="login_btn">
            <!-- <div class="text-center pt-4 text-muted">Don't have an account? <a href="#">Sign up</a> -->
        </form>
    </div>
@endsection
