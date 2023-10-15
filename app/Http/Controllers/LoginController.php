<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class LoginController extends Controller
{
    public function Validation(Request $request)
    {
        $validation = $request->validate([
            "Username" => "required",
            "Password" => "required",
        ]);

        $UserName = $request->input("Username");
        $PassWord = md5($request->input("Password"));
        $user = DB::select("SELECT * FROM `login_master` WHERE `username` = '{$UserName}' AND `password` = '{$PassWord}' ");

        if(empty($user)){
            redirect("/")->withErrors("Invalid Username and Password" , "invalidUser");
        }
    }
}
