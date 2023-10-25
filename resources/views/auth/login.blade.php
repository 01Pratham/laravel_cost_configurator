@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{ __('Login') }}</div>

                    <div class="card-body">
                        <form method="POST" action="{{ route('login') }}">
                            @csrf



                            <div style="left: 50%;
                            position: relative;
                            transform: translate(-25%);">
                                <div class="col-md-6 form__group">
                                    <input id="username" type="text"
                                        class=" @error('username') is-invalid @enderror form__field" name="username"
                                        value="{{ old('username') }}" required placeholder="Username">
                                    <label for="username" class="form__lable">Username</label>

                                    @error('username')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>



                                <div class="col-md-6 form__group">
                                    <input id="password" type="password"
                                        class=" @error('password') is-invalid @enderror form__field" name="password"
                                        required placeholder="Password">
                                    <label for="password" class="form__lable">Password</label>

                                    @error('password')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            {{-- <div class="row mb-3">
                                <div class="col-md-6 offset-md-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="remember" id="remember"
                                            {{ old('remember') ? 'checked' : '' }}>

                                        <label class="form-check-label" for="remember">
                                            {{ __('Remember Me') }}
                                        </label>
                                    </div>
                                </div>
                            </div> --}}

                            <div class="row my-2">
                                <div class="col-md-8 offset-md-4">
                                    <button type="submit" class="btn btn-primary"
                                    onclick="
                                    $('#username').val($('#username').val().toLowerCase())
                                    "
                                    >
                                        {{ __('Login') }}
                                    </button>
                                    @if (Route::has('password.request'))
                                        <a class="btn btn-link" href="{{ route('password.request') }}">
                                            {{ __('Forgot Your Password?') }}
                                        </a>
                                    @endif
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
