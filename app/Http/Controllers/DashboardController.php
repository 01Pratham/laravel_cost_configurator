<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function index(){
        DB::select("SELECT * FROM `tbl_saved_estimates` WHERE `emp_code` = 3094");
    }
}
