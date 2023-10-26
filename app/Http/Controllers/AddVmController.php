<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AddVmController extends Controller
{
    public function index(Request $request):void
    {
        print_r($request->all());
    }
}
