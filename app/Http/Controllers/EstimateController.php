<?php

namespace App\Http\Controllers;

use App\Models\TblProductList;
use App\Models\TblQuotType;
use App\Models\TblRegion;


use Illuminate\Http\Request;

class EstimateController extends Controller
{

    protected $productArr;
    protected $primaryCategoryArr;

    private function __construct()
    {
        $this->productArr = TblProductList::getAllProducts();   
        $this->primaryCategoryArr = TblProductList::getAllPrimaryCategories();
    }

    private function MapProductsWithCategories(){
        $productWithCategories= array();

        foreach ($this->productArr as $key => $product) {
            
        }
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

        // print_r($this->primaryCategoryArr);
        TblProductList::getAllPrimaryCategories();
        // return view('estimate',[
        //     "Data" => $resArray, 
        //     "QuotName" => $quotName[0]['template_name'],
        //     "regionArr" => $region,
        //     "Products"=>$this->productArr
        // ]);


    }
}
