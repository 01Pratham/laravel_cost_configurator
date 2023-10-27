<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TblProductList;
use App\Models\TblRegion;

use function PHPSTORM_META\type;

class AddEstimateController extends Controller
{
    protected $productArr;
    protected $regionArr;
    public function __construct()
    {
        $this->productArr = TblProductList::getAllProducts();
        $this->regionArr  = TblRegion::getAllRegions();
    }
    public function index(Request $request)
    {
        return view('layouts.DC_DR',
        [   
            
            'Id' => $request->id,
            'Name' => $request->name,
            "regionArr" =>$this->regionArr,
            "ProductArr" => $this->productArr
        ]);
    }
}
