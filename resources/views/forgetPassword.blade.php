@section('panel-body')
<div class="panel-heading">
    <h3 class="pt-3 font-weight-bold">Forget Password</h3>
</div>
<div class="panel-body p-3">
    <form action="login.php" method="POST">
        <div class="form-group py-2">
            <div class="input-field">
                <span class="far fa-user p-2"></span>
                <input type="text" placeholder="Username" required name='login_uname' autocomplete="on">
            </div>
        </div>
        <div class="form-group py-1 pb-2">
            <div class="input-field">
                <span class="fas fa-lock px-2" id="lock1" onclick="ToogleClass($(this).prop('id') , 'pass')"></span>
                <input type="password" placeholder="Password" required id="pass" name='login_pass' autocomplete="on">
            </div>
        </div>

        <div class="form-group py-1 pb-2">
            <div class="input-field">
                <span class="fas fa-lock px-2" id="lock2" onclick="ToogleClass($(this).prop('id') , 'conf_pass')"></span>
                <input type="password" placeholder="Confirm Password" required id="conf_pass" name='conf_login_pass' autocomplete="on">
            </div>
        </div>
        <div class="form-inline">
            <a href="login.php" id="forgot" class="font-weight-bold">Back to Login ?</a>
        </div>

        <input type="submit" value="Reset" class="btn btn-primary btn-block mt-3" name="reset_btn" id="reset_btn">
        <!-- <div class="text-center pt-4 text-muted">Don't have an account? <a href="#">Sign up</a> -->
    </form>
</div>
@endsection
