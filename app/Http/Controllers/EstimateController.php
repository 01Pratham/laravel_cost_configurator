<?php

namespace App\Http\Controllers;

use App\Models\TblProductList;
use App\Models\TblQuotType;
use App\Models\TblUiOptions;
use App\Models\TblRegion;
use Illuminate\Http\Request;

class EstimateController extends Controller
{

    protected $productArr;
    protected $primaryCategoriesArr;

    public function __construct()
    {
        $this->productArr = TblProductList::getAllProducts();
        $this->primaryCategoriesArr = TblProductList:: getAllPrimaryCategories();
    }


    public function validateRes(Request $request)
    {
        $resArray = $request->all();

        $validated = $request->validate([
            "pot_id" => "required|max:5",
            "project_name" => "required",
        ]);

        $quotName = TblQuotType::getQuoteName($request->quot_type);
        $region = TblRegion::getAllRegions();

        return view('estimate', [
            "Data" => $resArray,
            "QuotName" => $quotName[0]['template_name'],
            "regionArr" => $region,
            "Products" => $this->productArr
        ]);
    }



    public function Test(){
        echo "<pre>";
        print_r(TblProductList::getAllProducts());
        echo "</pre>";
    }
}
