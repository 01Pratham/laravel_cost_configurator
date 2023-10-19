@extends('layouts.app')

@section('content')
    <div class="container" style="">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{ __('Register') }}</div>
                    <div class="card-body">
                        <form method="POST" action="{{ route('register') }}">
                            @csrf
                            <div class="d-flex justify-content-center ">
                                <div class="col-12">
                                    <div class="row mb-3">
                                        <div class="col-6 form__group">
                                            <input id="first_name" type="text"
                                                class=" @error('first_name') is-invalid @enderror form__field"
                                                name="first_name" value="{{ old('first_name') }}" required autofocus
                                                placeholder="name" />
                                            <label for="first_name" class="form__lable">First Name</label>
                                            @error('first_name')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                        <div class="col-6 form__group">
                                            <input id="last_name" type="text"
                                                class=" @error('last_name') is-invalid @enderror form__field"
                                                name="last_name" value="{{ old('last_name') }}" required placeholder="name"
                                                autofocus />

                                            <label for="last_name" class="form__lable">Last Name</label>

                                            @error('last_name')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>


                                    <div class="row mb-3 ">
                                        <div class="col-sm-6 form__group">
                                            <input id="email" type="email"
                                                class=" @error('email') is-invalid @enderror form__field" name="email"
                                                value="{{ old('email') }}" required placeholder="Mail">
                                            <label for="email" class="form__lable">Email</label>
                                            @error('email')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                        <div class="col-sm-6 form__group">
                                            <input id="username" type="username"
                                                class=" @error('username') is-invalid @enderror form__field" name="username"
                                                value="{{ old('username') }}" required placeholder="Mail">
                                            <label for="username" class="form__lable">Username</label>
                                            @error('username')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="row mb-3 ">
                                        <div class="col-md-6  form__group ">
                                            <input id="password" type="password"
                                                class=" @error('password') is-invalid @enderror  form__field"
                                                name="password" required placeholder="Password">
                                            <label for="password" class="form__lable">Password</label>
                                            @error('password')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                        <div class="col-md-6  form__group ">
                                            <input id="password-confirm" type="password" class="  form__field"
                                                name="password_confirmation" required placeholder="Confirm Password">
                                            <label for="password-confirm" class="form__lable">Confirm Password</label>
                                        </div>
                                    </div>


                                    <div class="row mb-0">
                                        <div class="col-md-12 d-flex justify-content-center">
                                            <button type="submit" class="btn btn-primary">
                                                {{ __('Register') }}
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
