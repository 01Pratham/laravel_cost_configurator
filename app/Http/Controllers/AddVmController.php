<?php

namespace App\Http\Controllers;

use App\Models\TblProductList;
use Illuminate\Http\Request;

class AddVmController extends Controller
{
    protected $productArr;

    public function __construct()
    {
        $this->productArr = TblProductList::getAllProducts();
    }
    public function index(Request $request)
    {
        return view('components.virtualMachine', [
            "type" => "Ajax",
            'Id' => $request->id,
            'Name' => $request->name,
            'Prods' => $this->productArr['software'],
            'strg' => $this->productArr['storage']['object_storage'],
        ]);
    }
}
