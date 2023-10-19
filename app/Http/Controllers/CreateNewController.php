<?php

namespace App\Http\Controllers;

use App\Models\TblQuotType;
use App\Models\TblRateCard;
use Illuminate\Http\Request;

class CreateNewController extends Controller
{
    public function index(){
        $quotType = TblQuotType::all()->toArray();
        $rateCard = TblRateCard::getAllRateCards();
        return view('CreateNew')->with("Data", compact("quotType", "rateCard"));
    }
}
